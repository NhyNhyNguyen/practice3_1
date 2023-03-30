package repositories;

import java.util.List;

import entity.OrderEntity;


public class OrderRepository extends AbstractRepository<OrderEntity, Integer>{

	private static OrderRepository instance;

	public static OrderRepository getInstance() {
		if (instance == null) {
			instance = new OrderRepository();
		}
		return instance;
	}

	public List<OrderEntity> findAll() {
		String query = "SELECT e FROM OrderEntity e ORDER BY e.id DESC";
		return super.findAll(query);
	}
	
	public boolean deleteById(Integer id) {
		String query = "DELETE FROM OrderEntity e WHERE ID = :Id";
		return super.deleteById(query, id);
	}
}
