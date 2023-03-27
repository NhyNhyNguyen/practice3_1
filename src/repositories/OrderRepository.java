package repositories;

import javax.persistence.EntityManager;

import dbconfig.HibernateService;
import entity.OrderEntity;

public class OrderRepository {
	
		private static OrderRepository instance;

		public static OrderRepository getInstance() {
			if(instance == null) {
				instance = new OrderRepository();
			}
			return instance;
		}
		
		
		public void save(OrderEntity order) {
			EntityManager m= HibernateService.getEntityManager();
			m.getTransaction().begin();
			m.persist(order);
			m.getTransaction().commit();
		}
		
		public void update(OrderEntity order) {
			EntityManager m= HibernateService.getEntityManager();
			m.getTransaction().begin();
			m.merge(order);
			m.getTransaction().commit();
		}
}
