package controllers;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivy.addon.portalkit.publicapi.ProcessStartAPI;
import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@ViewScoped
public class HomeController implements Serializable {

    private static final long serialVersionUID = 1L;
    
    public String goHome() {
    	System.out.println("goHome");
        return "HomePage";
    }
    
	public String getUrl() {
		//"Business Processes/StartProcess/start2.ivp"
				String path = "Business Processes/StartProcess/start2.ivp";
				String url = ProcessStartAPI.findLinkByFriendlyRequestPath(Ivy.wf().getApplication(), "Business Processes/StartProcess/start2.ivp");
				Ivy.log().error("Get Url" + url);
				return url;
			}
 
}