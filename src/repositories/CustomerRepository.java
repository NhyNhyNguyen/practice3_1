package repositories;

import javax.persistence.EntityManager;

import entity.CustomerEntity;
import services.HibernateService;

public class CustomerRepository {
	
		private static CustomerRepository instance;

		public static CustomerRepository getInstance() {
			if(instance == null) {
				instance = new CustomerRepository();
			}
			return instance;
		}
		
		
		public void save(CustomerEntity customer) {
			EntityManager m= HibernateService.getEntityManager();
			m.getTransaction().begin();
			m.persist(customer);
			m.getTransaction().commit();
		}
}
