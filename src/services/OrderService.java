package services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import ch.ivyteam.ivy.environment.Ivy;
import dto.OrderDTO;
import entity.CustomerEntity;
import entity.OrderEntity;
import repositories.CustomerRepository;
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

	public List<OrderDTO> findAll() {
		Ivy.log().info("Find all orders info data");
		List<OrderEntity> orderEntities = OrderRepository.getInstance().findAll();
		List<OrderDTO> orderDTOs = orderEntities.stream().map(t -> OrderDTO.clone(t)).collect(Collectors.toList());
		List<CustomerEntity> customerEntities = CustomerRepository.getInstance().findAll();
		orderDTOs.stream().forEach(t -> t.setCustomerName(
				(customerEntities.stream().filter(c -> c.getId() == t.getId()).findFirst().get().getName())));
		return orderDTOs;
	}
}
