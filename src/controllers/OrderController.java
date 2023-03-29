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
	private List<OrderEntity> filterOrders = new ArrayList<>();

	public static OrderController instance;

	@PostConstruct
	public void init() {
		update();
		filterOrders = new ArrayList<>();
	}

	public void redirect() {
		Ivy.getInstance().log.info("Redirect to order page");
		update();
		try {
			FacesContext.getCurrentInstance().getExternalContext().redirect("OrderPage.xhtml");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void update() {
		orders = OrderService.getInstance().findAll();
		Ivy.getInstance().log.info("Order List: " + orders.size() + " " + orders);
	}

	public List<OrderEntity> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderEntity> orders) {
		this.orders = orders;
	}

	public List<OrderEntity> getFilterOrders() {
		return filterOrders;
	}

	public void setFilterOrders(List<OrderEntity> filterOrders) {
		this.filterOrders = filterOrders;
	}

	public static OrderController getInstance() {
		if (instance == null) {
			instance = new OrderController();
		}
		return instance;
	}

}