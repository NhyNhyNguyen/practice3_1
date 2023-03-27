package controllers;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import org.primefaces.PrimeFaces;
import org.primefaces.model.SortMeta;
import org.primefaces.model.SortOrder;

import ch.ivyteam.ivy.environment.Ivy;
import entity.OrderEntity;
import services.OrderService;

@ManagedBean
@SessionScoped
public class OrderController implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<OrderEntity> orders = new ArrayList<>();
	private List<SortMeta> sortBy;

	@PostConstruct
	public void init() {
		orders = OrderService.getInstance().findAll();
		Ivy.getInstance().log.info("Order List" + orders);

		sortBy = new ArrayList<>();
	}

	public void goOrders() {
		Ivy.getInstance().log.info("Redirect to order page");
		
//		PrimeFaces.current().ajax().update("orderTable");
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