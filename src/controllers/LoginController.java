package controllers;

import java.io.Serializable;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import org.primefaces.PrimeFaces;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.log.Logger;

@ManagedBean
@SessionScoped
public class LoginController implements Serializable {

	private static final long serialVersionUID = 1L;

	Logger logger = Logger.getLogger(LoginController.class);
	private boolean loggedIn;
	private String username = "ntynhi";
	private String password = "admin";

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

	public String login() {
		Ivy.log().error("Data login: username = " + this.username + " | password:  " + this.password);

		FacesMessage message = null;
		boolean isSuccess = Ivy.getInstance().session.loginSessionUser(username, password);
		if (isSuccess) {
			this.loggedIn = true;
			message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Welcome", username);

			Ivy.log().error("User info" + Ivy.session().getSessionUser().getDisplayName());
		} else {
			this.loggedIn = false;
			message = new FacesMessage(FacesMessage.SEVERITY_WARN, "Loggin Error", "Invalid credentials");
		}

		FacesContext.getCurrentInstance().addMessage(null, message);
		PrimeFaces.current().ajax().addCallbackParam("loggedIn", this.loggedIn);
		return "HomePage";
	}

	public void logout() {
		Ivy.log().error("=========logout==========");
		this.username = "";
		this.password = "";
		this.loggedIn = false;
		Ivy.session().logoutSessionUser();
	}
}