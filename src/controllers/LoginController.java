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
import services.CustomerService;
import services.UserService;

@ManagedBean
@SessionScoped
public class LoginController implements Serializable {

	private static final long serialVersionUID = 1L;

	private boolean loggedIn;
	private String username = "ntynhi";
	private String password = "admin";

	@Inject
	UserService userService = UserService.getInstance();

	public void login() {
		loggedIn = userService.login(username, password);
	}

	public void logout() {
		this.username = "";
		this.password = "";
		this.loggedIn = false;
		userService.logout();
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