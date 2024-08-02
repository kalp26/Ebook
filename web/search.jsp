<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <%@ include file="header.jsp" %>
    <br><br><br><br><br><br>
    <br><br><br>
    <h1 class="heading"><span>Search Results</span></h1>
    <section class="allc" id="allc">
        <div class="box-container">
            <% 
                String url = "jdbc:mysql://localhost:3306/ebook?zeroDateTimeBehavior=convertToNull";
                String user = "root";
                String password = "";

                String query = request.getParameter("query");

                String[] tableNames = {"action", "romance", "drama", "horror", "scienceFiction", "history"};
                for (String tableName : tableNames) {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = null;
                    PreparedStatement statement = null;
                    ResultSet resultSet = null;
                    try {
                        connection = DriverManager.getConnection(url, user, password);
                        statement = connection.prepareStatement("SELECT * FROM " + tableName + " WHERE book_name LIKE ?");
                        statement.setString(1, "%" + query + "%");
                        resultSet = statement.executeQuery();
                        while (resultSet.next()) {
            %>
            <div class="box-container">
            <div class="box">
                <img src="<%= resultSet.getString("image_url") %>" alt="Book Image">
                <div class="book-details">
                    <h2><%= resultSet.getString("book_name") %></h2>
                    <p>Author: <%= resultSet.getString("author") %></p>
                    <p>Price: <%= resultSet.getDouble("price") %></p>
                    <form action="cart" method="post">
                        <input type="hidden" name="bookId" value="<%= resultSet.getInt("book_id") %>">
                        <input type="submit" class="btn" value="Add to Cart">
                    </form>
                </div>
            </div>
            </div>
            <% 
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    
                    } finally {
                        if (resultSet != null) {
                            try {
                                resultSet.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (statement != null) {
                            try {
                                statement.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (connection != null) {
                            try {
                                connection.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            %>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>
