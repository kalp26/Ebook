import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class manageBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tableName = request.getParameter("table");
        String operation = request.getParameter("operation");
        
        
        if (operation.equals("add")) {
            response.sendRedirect("addBook.jsp?table=" + tableName);
        } else  {
            response.sendRedirect("deleteBook.jsp?table=" + tableName); 
        }
    }
}
