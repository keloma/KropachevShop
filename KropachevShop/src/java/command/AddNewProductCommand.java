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

public class AddNewProductCommand implements ActionCommand{

    private ProductFacade productFacade;

    public AddNewProductCommand() {
        try {
            Context context;
            context = new InitialContext();
            productFacade = (ProductFacade) context.lookup("java:module/ProductFacade");
        } catch (NamingException ex) {
            Logger.getLogger(AddNewProductCommand.class.getName()).log(Level.SEVERE, "Не удалось найти бин", ex);
        }
    }
    
    @Override
    public String execute(HttpServletRequest request) {
        request.setAttribute("info", "Эта строка создана классом UserCommand");
        HttpSession session = request.getSession(false);
        if (session == null){
           return RoutingManager.getRoute("path.page.login"); 
        }
        User regUser = (User) session.getAttribute("regUser");
        if(regUser == null) {
            request.setAttribute("info", "Войдите!");
            return RoutingManager.getRoute("path.page.login");
        }
        
        UserService us = new UserService();
        if(!us.userContainRole(Roles.MANAGER.toString(), regUser)){
            String page = RoutingManager.getRoute("path.page.login");
            return page;
        }
      
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String image = request.getParameter("image");
        String size = request.getParameter("size");
        String brand = request.getParameter("brand");
        String male = request.getParameter("male");
        Product newProduct = new Product(name, price, image, size, brand, male);
        try {
            productFacade.create(newProduct);
            request.setAttribute("info", "Новый продукт добавлен");
        }
        catch(Exception e){
            request.setAttribute("info", "Новый продукт добавить не удалось");
        }
        return RoutingManager.getRoute("path.page.addProduct");
    }
    
}
