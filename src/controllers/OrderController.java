package controllers;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.Ivy;
import entity.OrderEntity;
import services.OrderService;

@ManagedBean
@SessionScoped
public class OrderController implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<OrderEntity> orders = new ArrayList<>();

	@PostConstruct
	public void init() {
		orders = OrderService.getInstance().findAll();
		Ivy.getInstance().log.info("Order List" + orders);
	}

	public void goOrders() {
		Ivy.getInstance().log.info("Redirect to order page");
		orders = OrderService.getInstance().findAll();

		try {
			FacesContext.getCurrentInstance().getExternalContext().redirect("OrderPage.xhtml");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public List<OrderEntity> getOrders() {
		return orders;
	}

}