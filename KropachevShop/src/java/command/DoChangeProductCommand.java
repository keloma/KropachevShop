package command;

import classes.Roles;
import classes.UserService;
import command.creater.RoutingManager;
import entity.Product;
import entity.User;
import interfaces.ActionCommand;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import session.ProductFacade;

public class DoChangeProductCommand implements ActionCommand {

    private ProductFacade productFacade;

    public DoChangeProductCommand() {
        try {
            Context context;
            context = new InitialContext();
            productFacade = (ProductFacade) context.lookup("java:module/ProductFacade");
        } catch (NamingException ex) {
            Logger.getLogger(DoChangeProductCommand.class.getName()).log(Level.SEVERE, "Не удалось найти бин", ex);
        }
    }

    @Override
    public String execute(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null){
           return RoutingManager.getRoute("path.page.login"); 
        }
        User regUser = (User) session.getAttribute("regUser");
        if(regUser==null) {
            return RoutingManager.getRoute("path.page.login");
        }
        
        UserService us = new UserService();
        if(!us.userContainRole(Roles.MANAGER.toString(), regUser)){
            String page = RoutingManager.getRoute("path.page.login");
            return page;
        }
        
        
        String productId = request.getParameter("product_id");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String image = request.getParameter("image");
        String size = request.getParameter("size");
        String brand = request.getParameter("brand");
        String male = request.getParameter("male");
        if(productId != null && !productId.isEmpty()){
            Product editProduct = productFacade.find(new Long(productId));
            editProduct.setName(name);
            editProduct.setPrice(price);
            editProduct.setImage(image);
            editProduct.setSize(size);
            editProduct.setBrand(brand);
            editProduct.setMale(male);
            productFacade.edit(editProduct);
        }else{
            request.setAttribute("info", "Возможно не указан товар для изменения!");
        }
        
        request.setAttribute("products", productFacade.findAll());
        
        return RoutingManager.getRoute("path.page.allProduct");
    }
}