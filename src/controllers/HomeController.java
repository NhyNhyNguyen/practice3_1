package controllers;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class HomeController implements Serializable {

    private static final long serialVersionUID = 1L;
    
    public String goHome() {
    	System.out.println("goHome");
        return "HomePage";
    }
}