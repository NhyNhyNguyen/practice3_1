package controllers;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import org.primefaces.model.FilterMeta;

import ch.ivyteam.ivy.environment.Ivy;
import entity.OrderEntity;
import services.OrderService;

@ManagedBean
@SessionScoped
public class OrderController implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<OrderEntity> orders = new ArrayList<>();
	private List<OrderEntity> filterOrders = new ArrayList<>();
	private List<FilterMeta> filterBy;

	@PostConstruct
	public void init() {
		orders = OrderService.getInstance().findAll();
		filterOrders = new ArrayList<>();
		Ivy.getInstance().log.info("Order List" + orders);

        filterBy = new ArrayList<>();
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

	public List<OrderEntity> getFilterOrders() {
		return filterOrders;
	}

	public void setFilterOrders(List<OrderEntity> filterOrders) {
		this.filterOrders = filterOrders;
	}

	public void setOrders(List<OrderEntity> orders) {
		this.orders = orders;
	}

	public List<FilterMeta> getFilterBy() {
		return filterBy;
	}

	public void setFilterBy(List<FilterMeta> filterBy) {
		this.filterBy = filterBy;
	}
	
	

}