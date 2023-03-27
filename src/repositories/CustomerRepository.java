package repositories;

import dbconfig.AbstractRepository;
import entity.CustomerEntity;

public class CustomerRepository extends AbstractRepository<CustomerEntity, Integer> {

	private static CustomerRepository instance;

	public static CustomerRepository getInstance() {
		if (instance == null) {
			instance = new CustomerRepository();
		}
		return instance;
	}
}
