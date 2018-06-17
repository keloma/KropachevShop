package command;

import command.creater.RoutingManager;
import interfaces.ActionCommand;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import session.FaqFacade;

public class FaqCommand implements ActionCommand{

    private FaqFacade faqFacade;
    
    public FaqCommand() {
        Context context;
        try {
            context = new InitialContext();
            this.faqFacade = (FaqFacade) context.lookup("java:module/FaqFacade");
        } catch (NamingException ex) {
            Logger.getLogger(FaqCommand.class.getName()).log(Level.SEVERE, "Не удалось найти сессионый бин", ex);
        }
    }
    
    
    @Override
    public String execute(HttpServletRequest request) {
        request.setAttribute("faq", faqFacade.findAll());
        return RoutingManager.getRoute("path.page.faq");
    }
    
}
