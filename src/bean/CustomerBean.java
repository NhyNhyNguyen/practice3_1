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

	public void save(CustomerData data) {
		Ivy.log().error(data);
		data.getOrder().setStatus(Status.CLECK_APPROVE);
		CustomerEntity customer = CustomerService.getInstance().save(data.getCustomer());

		data.getOrder().setCustomer(customer);
		OrderService.getInstance().save(data.getOrder());

		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Save customer sucessfull", "");
		FacesContext.getCurrentInstance().addMessage("growl", message);
	}

	public void reject(CustomerData data) {
		data.getOrder().setStatus(Status.REJECT);
		data.getOrder().setCustomer(data.getCustomer());
		OrderService.getInstance().update(data.getOrder());

		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Reject customer sucessfull", "");
		FacesContext.getCurrentInstance().addMessage("growl", message);
	}

	public void approve(CustomerData data) {
		data.getOrder().setStatus(Status.MANAGER_APPROVE);
		data.getOrder().setCustomer(data.getCustomer());
		OrderService.getInstance().update(data.getOrder());

		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Manager Approve sucessfull", "");
		FacesContext.getCurrentInstance().addMessage("growl", message);
	}

	public List<String> getBatteryTypes() {
		return batteryTypes;
	}

	public List<String> getProductTypes() {
		return productTypes;
	}

}