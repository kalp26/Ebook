import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProcessNetbankingPaymentServlet")
public class ProcessNetbankingPaymentServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/ebook?zeroDateTimeBehavior=convertToNull";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bankName = request.getParameter("bankName");
        String accountNumber = request.getParameter("accountNumber");
        
        Integer userId = (Integer) request.getSession().getAttribute("user_id");
        System.out.println("User ID from session: " + userId);
        
        if (userId == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            connection.setAutoCommit(false);

            String sqlSelectCartItems = "SELECT book_id FROM cart WHERE user_id = ?";
            PreparedStatement selectCartStatement = connection.prepareStatement(sqlSelectCartItems);
            selectCartStatement.setInt(1, userId);
            ResultSet resultSet = selectCartStatement.executeQuery();

            String sqlInsertOrder = "INSERT INTO orders (user_id, payment_type, book_id) VALUES (?, ?, ?)";
            PreparedStatement insertOrderStatement = connection.prepareStatement(sqlInsertOrder);
            
            while (resultSet.next()) {
                int bookId = resultSet.getInt("book_id");
                insertOrderStatement.setInt(1, userId);
                insertOrderStatement.setString(2, "Net Banking");
                insertOrderStatement.setInt(3, bookId);
                insertOrderStatement.addBatch();
            }
            insertOrderStatement.executeBatch();

            String sqlInsertBankDetails = "INSERT INTO net_banking_payments (user_id, bank_name, account_number) VALUES (?, ?, ?)";
            PreparedStatement insertBankStatement = connection.prepareStatement(sqlInsertBankDetails);
            insertBankStatement.setInt(1, userId);
            insertBankStatement.setString(2, bankName);
            insertBankStatement.setString(3, accountNumber);
            insertBankStatement.executeUpdate();

            String sqlClearCart = "DELETE FROM cart WHERE user_id = ?";
            PreparedStatement clearCartStatement = connection.prepareStatement(sqlClearCart);
            clearCartStatement.setInt(1, userId);
            clearCartStatement.executeUpdate();

            connection.commit();

            response.sendRedirect("thankyou.jsp");
        } catch (SQLException e) {
            try {
                if (connection != null) {
                    connection.rollback();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
      
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
