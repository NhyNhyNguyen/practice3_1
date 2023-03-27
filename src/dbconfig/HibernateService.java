package dbconfig;

import javax.persistence.EntityManager;

import ch.ivyteam.ivy.environment.Ivy;

public class HibernateService {

	private static EntityManager entityManager;
	private static HibernateService instance = new HibernateService();

	public static HibernateService getInstance() {
		return instance;
	}

	public static EntityManager getEntityManager() {
		//to do check logic this code
		if(entityManager == null) {
			entityManager = Ivy.persistence().get("training_init").createEntityManager();
		}
		return Ivy.persistence().get("training_init").createEntityManager();
	}

}
