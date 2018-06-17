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

public class DeleteProductCommand implements ActionCommand {

    private ProductFacade productFacade;

    public DeleteProductCommand() {
        try {
            Context context;
            context = new InitialContext();
            productFacade = (ProductFacade) context.lookup("java:module/ProductFacade");
        } catch (NamingException ex) {
            Logger.getLogger(DeleteProductCommand.class.getName()).log(Level.SEVERE, "Не удалось найти бин", ex);
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
        
        String id = request.getParameter("id");
        try {
            Product deleteProduct = productFacade.find(new Long(id));
            productFacade.remove(deleteProduct);
            request.setAttribute("info", "Продукт удален успешно");
        }catch(Exception e){
            request.setAttribute("info", "Продукт не удалось удалить");
        }
        
        request.setAttribute("products", productFacade.findAll());
        
        return RoutingManager.getRoute("path.page.allProduct");
    }
}