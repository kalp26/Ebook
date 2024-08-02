import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CartServlet")
public class cart extends HttpServlet {

    String JDBC_URL = "jdbc:mysql://localhost:3306/ebook?zeroDateTimeBehavior=convertToNull";
    String JDBC_USER = "root";
    String JDBC_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        int userId = -1;

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user_id") != null) {
            userId = (int) session.getAttribute("user_id");
        } else {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
                 PreparedStatement pstmt = conn.prepareStatement("INSERT INTO cart (book_id, user_id) VALUES (?, ?)")) {
                pstmt.setInt(1, bookId);
                pstmt.setInt(2, userId);
                pstmt.executeUpdate();
            }
            String referer = request.getHeader("referer");
            if (referer != null && referer.contains("action.jsp")) {
                response.sendRedirect("action.jsp");
            } else if (referer != null && referer.contains("romance.jsp")) {
                response.sendRedirect("romance.jsp");
            } else if (referer != null && referer.contains("drama.jsp")) {
                response.sendRedirect("drama.jsp");
            } else if (referer != null && referer.contains("horror.jsp")) {
                response.sendRedirect("horror.jsp");
            } else if (referer != null && referer.contains("scienceFiction.jsp")) {
                response.sendRedirect("scienceFiction.jsp");
            } else if (referer != null && referer.contains("history.jsp")) {
                response.sendRedirect("history.jsp");
            } else {
                response.sendRedirect("home.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
       
        }
    }
}
