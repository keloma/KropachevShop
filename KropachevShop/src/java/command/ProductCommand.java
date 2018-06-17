package command;

import command.creater.RoutingManager;
import interfaces.ActionCommand;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import session.ProductFacade;

public class ProductCommand implements ActionCommand{
    
    private ProductFacade productFacade;
    
    public ProductCommand() {
        Context context;
        try {
            context = new InitialContext();
            this.productFacade = (ProductFacade) context.lookup("java:module/ProductFacade");
        } catch (NamingException ex) {
            Logger.getLogger(ProductCommand.class.getName()).log(Level.SEVERE, "Не удалось найти сессионый бин", ex);
        }
    }
    
    @Override
    public String execute(HttpServletRequest request) {  
        
        request.setAttribute("products", productFacade.findAll());

        return RoutingManager.getRoute("path.page.products");
    }
}
