package repositories;

import Practice31.Customer;
import ch.ivyteam.ivy.environment.Ivy;

public class CustomerRepository {
	
		private static CustomerRepository instance;

		public static CustomerRepository getInstance() {
			if(instance == null) {
				instance = new CustomerRepository();
			}
			return instance;
		}
		
		
		public void save(Customer customer) {
			Ivy.getInstance().persistence.get("practice_unit").persist(customer);
		}
}
