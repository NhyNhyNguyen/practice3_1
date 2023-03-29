package services;

import javax.annotation.ManagedBean;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ApplicationScoped;
import javax.faces.context.FacesContext;

import org.primefaces.PrimeFaces;

import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@ApplicationScoped
public class UserService {
	private static UserService instance = new UserService();

	public static UserService getInstance() {
		return instance;
	}

	public boolean logout() {
		Ivy.session().logoutSessionUser();
		Ivy.log().error("logout function");
		return true;
	}

	public boolean login(String username, String password) {
		FacesMessage message = null;
		boolean loggedIn = false;
		if (UserService.getInstance().authorized(username, password)) {
			loggedIn = true;
			message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Welcome", username);
		} else {
			loggedIn = false;
			message = new FacesMessage(FacesMessage.SEVERITY_WARN, "Loggin Error", "Invalid credentials");
		}

		FacesContext.getCurrentInstance().addMessage(null, message);
		PrimeFaces.current().ajax().addCallbackParam("loggedIn", loggedIn);

		Ivy.log().error("Data login: username = " + username + " | password:  " + password);


		return loggedIn;
	}

	public boolean authorized(String username, String password) {
		return Ivy.getInstance().session.loginSessionUser(username, password);
	}
}
