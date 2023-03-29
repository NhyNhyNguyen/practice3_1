package controllers;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import ch.ivy.addon.portalkit.publicapi.ProcessStartAPI;
import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@SessionScoped
public class HomeController extends AbstractController implements Serializable {

	private static final long serialVersionUID = 1L;

	public void redirect() {
		super.redirect("HomePage.xhtml");
	}

	public String getUrl(String path) {
		String url = ProcessStartAPI.findStartableLinkByUserFriendlyRequestPath(Ivy.wf().getApplication(), path);
		Ivy.log().error("Get Url" + url);
		return url;
	}

	@Override
	public void update() {	
	}
	

}