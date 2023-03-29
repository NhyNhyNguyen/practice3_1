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
import dto.OrderDTO;
import entity.OrderEntity;
import services.OrderService;

@ManagedBean
@SessionScoped
public class OrderController implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<OrderDTO> orders = new ArrayList<>();
	private List<OrderDTO> filterOrders = new ArrayList<>();
	
	public static OrderController instance = new OrderController();

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

	

	public List<OrderDTO> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderDTO> orders) {
		this.orders = orders;
	}

	public List<OrderDTO> getFilterOrders() {
		return filterOrders;
	}

	public void setFilterOrders(List<OrderDTO> filterOrders) {
		this.filterOrders = filterOrders;
	}

	public static OrderController getInstance() {
		return instance;
	}
	
	
}