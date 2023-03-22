package services;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@ViewScoped
public class UserService {
		public static boolean authorized(String username, String password) {
			return Ivy.getInstance().session.loginSessionUser(username, password);
		}
}
