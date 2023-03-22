package controllers;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.view.ViewScoped;

@ManagedBean
@ViewScoped
public class LoginController implements Serializable {

    private static final long serialVersionUID = 1L;
    
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

	public void login(String username, String password) {
    	System.out.println("=========");
    }
	
	public void logout() {
    	System.out.println("=========");
    }
}