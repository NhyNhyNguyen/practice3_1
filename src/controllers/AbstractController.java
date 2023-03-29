package controllers;

import java.io.IOException;

import javax.faces.context.FacesContext;

import org.primefaces.PrimeFaces;

import ch.ivyteam.ivy.environment.Ivy;

public abstract class AbstractController {
	public void redirect(String path) {
		try {
			if (Ivy.session().getSessionUser() == null) {
				PrimeFaces.current().executeScript("PF('loginDialog').show()");
			} else {
				Ivy.getInstance().log.info("Redirect to " + path);
				update();
				FacesContext.getCurrentInstance().getExternalContext().redirect("http://localhost:8081/ivy/faces/view/designer/Practice31$1/" + path);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public abstract void update();
}
