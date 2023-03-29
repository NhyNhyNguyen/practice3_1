package controllers;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.environment.Ivy;
import entity.OrderEntity;
import enums.ProductType;
import services.OrderService;

@ManagedBean 
@ViewScoped
public class OrderController extends AbstractController implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<OrderEntity> orders = new ArrayList<>();
	private List<OrderEntity> filterOrders = new ArrayList<>();
	private List<String> types = ProductType.getNames();

	public static OrderController instance;

	@PostConstruct
	public void init() {
		update();
		filterOrders = new ArrayList<>();
	}

	public void redirect() {
		super.redirect("OrderPage.xhtml");
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

	public List<String> getTypes() {
		return types;
	}

	public void setTypes(List<String> type) {
		this.types = type;
	}

}