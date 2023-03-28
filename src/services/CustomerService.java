package services;

import javax.persistence.EntityManager;

import ch.ivyteam.ivy.environment.Ivy;
import dbconfig.EntityManagerService;
import entity.CustomerEntity;
import repositories.CustomerRepository;

public class CustomerService {
	private static CustomerService instance = new CustomerService();

	public static CustomerService getInstance() {
		return instance;
	}

	public Long save(CustomerEntity customer) {
		Ivy.log().info("Save customer info data" + customer.toString());
		CustomerRepository.getInstance().save(customer);
		return customer.getId();
	}
}
