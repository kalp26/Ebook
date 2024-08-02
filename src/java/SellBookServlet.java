import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SellBookServlet")
public class SellBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String bookName = request.getParameter("bookName");
        String author = request.getParameter("author");
        String expectedPrice = request.getParameter("expectedPrice");
        String bookCondition = request.getParameter("bookCondition");

        String jdbcUrl = "jdbc:mysql://localhost:3306/ebook?zeroDateTimeBehavior=convertToNull";
        String dbUsername = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

            String sql = "INSERT INTO books(username, bookName, author, expectedPrice, bookCondition) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, bookName);
            statement.setString(3, author);
            statement.setString(4, expectedPrice);
            statement.setString(5, bookCondition);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("success.jsp");
            } else {
                out.println("<h3>Failed to add book for sale!</h3>");
            }

            connection.close();
        } catch (Exception e) {
           
        }
    }
}
