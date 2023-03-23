package services;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@ViewScoped
public class UserService {
	
		private static UserService instance = new UserService();
		
		
		public static UserService getInstance() {
			return instance;
		}


		public boolean authorized(String username, String password) {
			return Ivy.getInstance().session.loginSessionUser(username, password);
		}
}
