package controllers;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.view.ViewScoped;

@ManagedBean
@ViewScoped
public class OrderController implements Serializable {

    private static final long serialVersionUID = 1L;
    
    public void goOrders() {
        // Show list of orders
    	System.out.println("=========");
    }
}