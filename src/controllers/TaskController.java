package controllers;

import java.io.IOException;
import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.faces.view.ViewScoped;

import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@ViewScoped
public class TaskController implements Serializable {

	private static final long serialVersionUID = 1L;

	public void redirect() {
		Ivy.getInstance().log.info("Redirect to Task Page");
		try {
			FacesContext.getCurrentInstance().getExternalContext().redirect("TaskPage.xhtml");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}