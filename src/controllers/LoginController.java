package controllers;

import java.io.Serializable;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.inject.Inject;

import org.primefaces.PrimeFaces;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.log.Logger;
import services.UserService;

@ManagedBean
@SessionScoped
public class LoginController implements Serializable {

	private static final long serialVersionUID = 1L;

	Logger logger = Logger.getLogger(LoginController.class);

	private boolean loggedIn;
	private String username = "ntynhi";
	private String password = "admin";

	UserService userService;

	public void login() {
		FacesMessage message = null;
		if (UserService.authorized(username, password)) {
			this.loggedIn = true;
			message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Welcome", username);
		} else {
			this.loggedIn = false;
			message = new FacesMessage(FacesMessage.SEVERITY_WARN, "Loggin Error", "Invalid credentials");
		}

		FacesContext.getCurrentInstance().addMessage(null, message);
		PrimeFaces.current().ajax().addCallbackParam("loggedIn", this.loggedIn);

		Ivy.log().trace("Data login: username = " + this.username + " | password:  " + this.password);
	}

	public void logout() {
		this.username = "";
		this.password = "";
		this.loggedIn = false;
		Ivy.session().logoutSessionUser();
		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Logout Sucessfull", username);
		FacesContext.getCurrentInstance().addMessage(null, message);

		Ivy.log().trace("logout function");
	}

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

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}