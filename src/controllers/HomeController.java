package controllers;

import java.io.IOException;
import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import ch.ivy.addon.portalkit.publicapi.ProcessStartAPI;
import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@SessionScoped
public class HomeController implements Serializable {

	private static final long serialVersionUID = 1L;

	public void redirect() {
		Ivy.getInstance().log.info("Redirect to Home page 2");
		try {
			FacesContext.getCurrentInstance().getExternalContext().redirect("HomePage.xhtml");
		} catch (IOException e) {
			e.printStackTrace();
		}
	

	}

	public String getUrl(String path) {
		String url = ProcessStartAPI.findStartableLinkByUserFriendlyRequestPath(Ivy.wf().getApplication(), path);
		Ivy.log().error("Get Url" + url);
		return url;
	}

}