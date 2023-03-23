package services;

import Practice31.Customer;
import repositories.CustomerRepository;

public class CustomerService {
	private static CustomerService instance = new CustomerService();

	public static CustomerService getInstance() {
		return instance;
	}

	public void save() {
		Customer customer = new Customer();
		customer.setName("ntynhi");
		CustomerRepository.getInstance().save(customer);
	}
}
