package dbconfig;

import javax.persistence.EntityManager;

import ch.ivyteam.ivy.environment.Ivy;

public class EntityManagerService {

	private static EntityManager entityManager;
	private static EntityManagerService instance = new EntityManagerService();

	public static EntityManagerService getInstance() {
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
