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

public class DoChangeBrandCommand implements ActionCommand {

    private BrandFacade brandFacade;

    public DoChangeBrandCommand() {
        try {
            Context context;
            context = new InitialContext();
            brandFacade = (BrandFacade) context.lookup("java:module/BrandFacade");
        } catch (NamingException ex) {
            Logger.getLogger(DoChangeBrandCommand.class.getName()).log(Level.SEVERE, "Не удалось найти бин", ex);
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
        
        String brandId = request.getParameter("brand_id");
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        String description = request.getParameter("description");
        if(brandId != null && !brandId.isEmpty()){
            Brand editBrand = brandFacade.find(new Long(brandId));
            editBrand.setImage(image);
            editBrand.setName(name);
            editBrand.setDescription(description);
            brandFacade.edit(editBrand);
        }else{
            request.setAttribute("info", "Возможно не указан бренд для изменения!");
        }
        
        request.setAttribute("brands", brandFacade.findAll());
        
        return RoutingManager.getRoute("path.page.allBrand");
    }
}