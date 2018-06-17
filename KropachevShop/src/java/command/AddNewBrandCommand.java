package command;

import classes.Roles;
import classes.UserService;
import command.creater.RoutingManager;
import entity.Brand;
import entity.User;
import interfaces.ActionCommand;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import session.BrandFacade;

public class AddNewBrandCommand implements ActionCommand {

    private BrandFacade brandFacade;

    public AddNewBrandCommand() {
        try {
            Context context;
            context = new InitialContext();
            brandFacade = (BrandFacade) context.lookup("java:module/BrandFacade");
        } catch (NamingException ex) {
            Logger.getLogger(AddNewBrandCommand.class.getName()).log(Level.SEVERE, "Не удалось найти бин", ex);
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
        
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        String description = request.getParameter("description");
        Brand newBrand = new Brand(name, image, description);
        try {
            brandFacade.create(newBrand);
            request.setAttribute("info", "Новый бренд добавлен");
        }
        catch(Exception e){
            request.setAttribute("info", "Новый бренд добавить не удалось");
        }
        return RoutingManager.getRoute("path.page.addBrand");
    }
}