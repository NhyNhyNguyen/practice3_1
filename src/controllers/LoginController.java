package controllers;

import java.io.Serializable;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import services.UserService;

@ManagedBean
@SessionScoped
public class LoginController extends AbstractController implements Serializable {

	private static final long serialVersionUID = 1L;

	private boolean loggedIn;
	private String username = "ntynhi";
	private String password = "admin";
	
	public void login() {
		loggedIn = UserService.getInstance().login(username, password);
	}

	public void logout() {
		this.username = "";
		this.password = "";
		this.loggedIn = false;
		UserService.getInstance().logout();
		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Logout Sucessfull", "");
		super.redirect("HomePage.xhtml", message);
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

	@Override
	public void update() {
		
	}

}