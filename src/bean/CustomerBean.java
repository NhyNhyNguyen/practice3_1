package bean;

import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import Practice31.CustomerData;
import ch.ivyteam.ivy.environment.Ivy;
import entity.CustomerEntity;
import enums.BatteryType;
import enums.ProductType;
import enums.Status;
import services.CustomerService;
import services.OrderService;;

public class CustomerBean {
	public void init() {

	}

	public List<String> batteryTypes = BatteryType.getNames();
	public List<String> productTypes = ProductType.getNames();

	/**
	 * Clerk check input, save data order
	 * @param data
	 */
	public void save(CustomerData data) {
		if (data.getOrder().getStatus() == Status.REJECT) {
			data.getOrder().setStatus(Status.CLECK_APPROVE);
			update(data);
		} else {
			data.getOrder().setStatus(Status.CLECK_APPROVE);
			saveData(data);
		}
	}

	/**
	 * Manager reject order
	 * @param data
	 */
	public void reject(CustomerData data) {
		data.getOrder().setStatus(Status.REJECT);
		update(data);
	}

	/**
	 * Manager approve order
	 * @param data
	 */
	public void approve(CustomerData data) {
		data.getOrder().setStatus(Status.MANAGER_APPROVE);
		update(data);
	}

	public void update(CustomerData data) {
		data.getOrder().setCustomer(data.getCustomer());
		OrderService.getInstance().update(data.getOrder());
	}

	public void saveData(CustomerData data) {
		CustomerEntity customer = CustomerService.getInstance().save(data.getCustomer());
		data.getOrder().setCustomer(customer);
		OrderService.getInstance().save(data.getOrder());
	}

	public List<String> getBatteryTypes() {
		return batteryTypes;
	}

	public List<String> getProductTypes() {
		return productTypes;
	}

}