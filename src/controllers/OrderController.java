package controllers;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import ch.ivyteam.ivy.environment.Ivy;
import entity.OrderEntity;
import enums.BatteryType;
import enums.ProductType;
import enums.Status;
import services.OrderService;

@ManagedBean
public class OrderController extends AbstractController implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<OrderEntity> orders = new ArrayList<>();
	private List<OrderEntity> filterOrders = new ArrayList<>();
	private List<String> types = ProductType.getNames();
	private List<String> requireMeters = Arrays.asList("YES", "NO");
	private List<String> batteryTypes = BatteryType.getNames();
	private List<String> statusTypes = Status.getNames();

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

	public List<String> getRequireMeters() {
		return requireMeters;
	}

	public List<String> getBatteryTypes() {
		return batteryTypes;
	}

	public List<String> getStatusTypes() {
		return statusTypes;
	}

}