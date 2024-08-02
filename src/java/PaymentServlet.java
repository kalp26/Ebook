import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentMethod = request.getParameter("paymentMethod");
        
        if (paymentMethod != null) {
            switch (paymentMethod) {
                case "cash":
                    request.getRequestDispatcher("cash.jsp").forward(request, response);
                    break;
                case "card":
                    request.getRequestDispatcher("card.jsp").forward(request, response);
                    break;
                case "upi":
                    request.getRequestDispatcher("upi.jsp").forward(request, response);
                    break;
                case "netbanking":
                    request.getRequestDispatcher("netbanking.jsp").forward(request, response);
                    break;
                default:
                    request.getRequestDispatcher("payment.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("payment.jsp").forward(request, response);
        }
    }
}
