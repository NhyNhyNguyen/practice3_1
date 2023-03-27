package services;


import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import entity.OrderEntity;
import repositories.OrderRepository;

public class OrderService {
	private static OrderService instance = new OrderService();

	public static OrderService getInstance() {
		return instance;
	}

	public void save(OrderEntity order) {
		
		Ivy.log().info("Save order info data" + order.toString());
		OrderRepository.getInstance().save(order);
	}
	
	public void update(OrderEntity order) {
		
		Ivy.log().info("Update order info data" + order.toString());
		OrderRepository.getInstance().update(order);
	}
	
	public List<OrderEntity> findAll() {
		Ivy.log().info("Find all orders info data");
		return OrderRepository.getInstance().findAll();
	}
}
