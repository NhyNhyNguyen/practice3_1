package services;

import javax.annotation.ManagedBean;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ApplicationScoped;
import javax.faces.context.FacesContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
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
		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Logout Sucessfull", "");
		FacesContext.getCurrentInstance().addMessage(null, message);

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
		/*
		 * Configuration configuration = new Configuration();
		 * 
		 * configuration.setProperty("hibernate.dialect",
		 * "org.hibernate.dialect.Oracle12cDialect");
		 * configuration.setProperty("hibernate.connection.driver_class",
		 * "oracle.jdbc.driver.OracleDriver");
		 * configuration.setProperty("hibernate.connection.url",
		 * "jdbc:oracle:thin:@localhost:1521:XE");
		 * configuration.setProperty("hibernate.connection.username", "DEMO");
		 * configuration.setProperty("hibernate.connection.password", "123$%^");
		 * configuration.setProperty("show_sql", "true");
		 * configuration.setProperty("hibernate.hbm2ddl.auto", "update");
		 * 
		 * SessionFactory sessionFactory = configuration.buildSessionFactory();
		 * Ivy.log().error("Init db");
		 * 
		 * Session session = sessionFactory.openSession(); User user = new User();
		 * user.setUsername("John"); user.setEmail("john@example.com");
		 * 
		 * session.beginTransaction(); session.save(user);
		 * session.getTransaction().commit();
		 * 
		 * session.close(); sessionFactory.close(); Ivy.log().error("Create user db");
		 */
		return loggedIn;
	}

	public boolean authorized(String username, String password) {
		return Ivy.getInstance().session.loginSessionUser(username, password);
	}
}
