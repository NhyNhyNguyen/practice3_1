package controllers;

import java.io.Serializable;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.request.impl.RequestContext;
import ch.ivyteam.log.Logger;

@ManagedBean
@RequestScoped
public class LoginController implements Serializable {

	private static final long serialVersionUID = 1L;

	Logger logger = Logger.getLogger(LoginController.class);
	private boolean loggedIn = false;
	private String username;
	private String password;

	public boolean isLoggedIn() {
		return loggedIn;
	}

	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void login() {
		Ivy.log().error("Data login: username = " + this.username + " | password:  " + this.password);
		// todo check how to redirect to Test Page ...

		// todo check username, password

		FacesMessage msg = null;

		if (StringUtils.isEmpty(this.username) || StringUtils.isEmpty(this.password)) {
			Ivy.log().error("====");
			msg = new FacesMessage(FacesMessage.SEVERITY_WARN, "Error", "UserName is empty.");
			FacesContext.getCurrentInstance().addMessage(null, msg);
			Ivy.log().error("====");
		}


	/*
	 * return "Test.xhtml?faces-redirect=true";
	 */ }

	public void logout() {
		System.out.println("=========logout==========");
	}
}