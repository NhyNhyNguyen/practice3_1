package bean;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import org.primefaces.PrimeFaces;

import Practice31.CustomerData;
import ch.ivyteam.ivy.environment.Ivy;
import controllers.OrderController;
import entity.OrderEntity;
import enums.Status;
import services.CustomerService;
import services.OrderService;;

public class CustomerBean {
	public void init() {

	}

	public void save(CustomerData data) {
		data.getOrder().setStatus(Status.CLECK_APPROVE);
		long customerId = CustomerService.getInstance().save(data.getCustomer());

		data.getOrder().setCustomerId(customerId);
		OrderService.getInstance().save(data.getOrder());

		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Save customer sucessfull", "");
		FacesContext.getCurrentInstance().addMessage("growl", message);
	}

	public void approve(OrderEntity data) {
		data.setStatus(Status.MANAGER_APPROVE);
		OrderService.getInstance().update(data);
		Ivy.log().error("Manager Aprrove " + data);
		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Manager Approve sucessfull", "");
		FacesContext.getCurrentInstance().addMessage("growl", message);
	}
}
