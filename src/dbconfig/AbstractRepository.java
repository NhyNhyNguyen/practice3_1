package dbconfig;

import java.util.List;

import javax.persistence.EntityManager;

public class AbstractRepository<T, ID> {

	public void save(T data) {
		EntityManager m = EntityManagerService.getEntityManager();
		m.getTransaction().begin();
		m.persist(data);
		m.getTransaction().commit();
	}

	public void update(T data) {
		EntityManager m = EntityManagerService.getEntityManager();
		m.getTransaction().begin();
		m.merge(data);
		m.getTransaction().commit();
	}

	public List<T> findAll(String query) {
		EntityManager m = EntityManagerService.getEntityManager();
		List<T> data = m.createQuery(query).getResultList();
		return data;
	}

	public T findById(Class<T> clazz, ID id) {
		EntityManager m = EntityManagerService.getEntityManager();
		T data = m.find(clazz, id);
		return data;
	}

	public boolean deleteById(String query, ID id) {
		EntityManager m = EntityManagerService.getEntityManager();
		int numRow = m.createQuery(query).setParameter("Id", id).executeUpdate();
		return numRow > 0;
	}
}
