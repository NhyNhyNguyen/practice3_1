package controllers.beans;

import java.io.Serializable;

import javax.faces.bean.ApplicationScoped;
import javax.inject.Named;
import org.apache.commons.lang3.StringUtils;

@Named
@ApplicationScoped
public class UserBean implements Serializable {

    private static final long serialVersionUID = 1L;

    public boolean authenticate(String username, String password) {
        // Perform user authentication here, e.g. check against a database or LDAP server
        if (StringUtils.equals(username, "admin") && StringUtils.equals(password, "password")) {
            return true;
        } else {
            return false;
        }
    }
}