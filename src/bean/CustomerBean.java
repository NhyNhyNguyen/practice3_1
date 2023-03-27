package bean;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import org.primefaces.PrimeFaces;

import Practice31.CustomerData;
import entity.OrderEntity;
import services.CustomerService;
import services.OrderService;;

public class CustomerBean {
	public void init() {

	}

	public void save(CustomerData data) {

		CustomerService.getInstance().save(data.getCustomer());

		OrderService.getInstance().save(data.getOrder());

		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Save customer sucessfull", "");
		FacesContext.getCurrentInstance().addMessage("growl", message);
		PrimeFaces.current().executeScript("#{logic.close}");
	}
	
	
	public void approve(OrderEntity data) {


		OrderService.getInstance().update(data);

		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Approve sucessfull", "");
		FacesContext.getCurrentInstance().addMessage("growl", message);
		PrimeFaces.current().executeScript("#{logic.close}");
	}
}
