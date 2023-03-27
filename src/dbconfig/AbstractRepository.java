package dbconfig;

import javax.persistence.EntityManager;

public class AbstractRepository<T, ID> {

	public void save(T data) {
		EntityManager m = HibernateService.getEntityManager();
		m.getTransaction().begin();
		m.persist(data);
		m.getTransaction().commit();
	}
}
