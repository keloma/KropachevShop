package command;

import command.creater.RoutingManager;
import interfaces.ActionCommand;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import session.BrandFacade;

public class BrandCommand implements ActionCommand{
    
    private BrandFacade brandFacade;
    
    public BrandCommand() {
        Context context;
        try {
            context = new InitialContext();
            this.brandFacade = (BrandFacade) context.lookup("java:module/BrandFacade");
        } catch (NamingException ex) {
            Logger.getLogger(BrandFacade.class.getName()).log(Level.SEVERE, "Не удалось найти сессионый бин", ex);
        }
    }
    
    @Override
    public String execute(HttpServletRequest request) {  
        
        request.setAttribute("brands", brandFacade.findAll());

        return RoutingManager.getRoute("path.page.brands");
    }
}
