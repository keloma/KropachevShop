package command;

import classes.Roles;
import classes.UserService;
import command.creater.RoutingManager;
import entity.User;
import interfaces.ActionCommand;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import session.UserFacade;

public class PanelAdminCommand implements ActionCommand {
    
    private UserFacade userFacade;

    public PanelAdminCommand() {
        try {
            Context context;
            context = new InitialContext();
            userFacade = (UserFacade) context.lookup("java:module/UserFacade");
        } catch (NamingException ex) {
            Logger.getLogger(PanelAdminCommand.class.getName()).log(Level.SEVERE, "Не удалось найти бин", ex);
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
        if(!us.userContainRole(Roles.ADMIN.toString(), regUser)){
            String page = RoutingManager.getRoute("path.page.login");
            return page;
        }
                
        List<User> users = userFacade.findAll();
        request.setAttribute("users", users);
        request.setAttribute("roles", Roles.values());
        request.setAttribute("info", "Эта строка создана классом PanelAdminCommand");
        return RoutingManager.getRoute("path.page.demoAdmin");
        
    }
    
}
