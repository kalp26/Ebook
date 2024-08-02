<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.http.*, java.io.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order History</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .container {
            flex: 1;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        img {
            max-width: 100px;
            height: auto;
        }
        form {
            display: inline;
        }
        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <br><br><br><br><br><br>
    <br><br><br>
    <h1>Order History</h1>
    <table border="1">
        <tr>
            <th>Book Name</th>
            <th>Price</th>
            <th>Author</th>
            <th>Image</th>
            <th>Payment Type</th>
            <th>Cancel Order</th>
        </tr>
        <% 
            String url = "jdbc:mysql://localhost:3306/ebook?zeroDateTimeBehavior=convertToNull";
            String user = "root";
            String password = "";

            Connection connection = null;
            PreparedStatement preparedStatement = null;
            ResultSet resultSet = null;
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(url, user, password);
                
                int userId = -1;
                if (session != null && session.getAttribute("user_id") != null) {
                    userId = Integer.parseInt(session.getAttribute("user_id").toString());
                } else {
                    response.sendRedirect("login.jsp");
                    return;
                }

               
                preparedStatement = connection.prepareStatement("SELECT * FROM orders INNER JOIN action ON orders.book_id = action.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    String paymentType = resultSet.getString("payment_type");
        %>
        <tr>
            <td><h3><%= bookName %></h3></td>
            <td><h3><%= price %></h3></td>
            <td><h3><%= author %></h3></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td><h3><%= paymentType %></h3></td>
            <td>
                <form action="CancelOrderServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Cancel" class="btn" >
                </form>
            </td>
        </tr>
        
        <% 
                }
                resultSet.close();
                 preparedStatement = connection.prepareStatement("SELECT * FROM orders INNER JOIN romance ON orders.book_id = romance.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    String paymentType = resultSet.getString("payment_type");
        %>
        <tr>
            <td><h3><%= bookName %></h3></td>
            <td><h3><%= price %></h3></td>
            <td><h3><%= author %></h3></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td><h3><%= paymentType %></h3></td>
            <td>
                <form action="CancelOrderServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Cancel" class="btn" >
                </form>
            </td>
        </tr>
        <% 
                }
                resultSet.close();
                 preparedStatement = connection.prepareStatement("SELECT * FROM orders INNER JOIN drama ON orders.book_id = drama.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    String paymentType = resultSet.getString("payment_type");
        %>
        <tr>
            <td><h3><%= bookName %></h3></td>
            <td><h3><%= price %></h3></td>
            <td><h3><%= author %></h3></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td><h3><%= paymentType %></h3></td>
            <td>
                <form action="CancelOrderServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Cancel" class="btn" >
                </form>
            </td>
        </tr>
        <% 
                }
                resultSet.close();
                 preparedStatement = connection.prepareStatement("SELECT * FROM orders INNER JOIN horror ON orders.book_id = horror.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    String paymentType = resultSet.getString("payment_type");
        %>
        <tr>
            <td><h3><%= bookName %></h3></td>
            <td><h3><%= price %></h3></td>
            <td><h3><%= author %></h3></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td><h3><%= paymentType %></h3></td>
            <td>
                <form action="CancelOrderServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Cancel" class="btn" >
                </form>
            </td>
        </tr>
         <% 
                }
                resultSet.close();
                 preparedStatement = connection.prepareStatement("SELECT * FROM orders INNER JOIN science_fiction ON orders.book_id = science_fiction.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    String paymentType = resultSet.getString("payment_type");
        %>
        <tr>
            <td><h3><%= bookName %></h3></td>
            <td><h3><%= price %></h3></td>
            <td><h3><%= author %></h3></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td><h3><%= paymentType %></h3></td>
            <td>
                <form action="CancelOrderServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Cancel" class="btn" >
                </form>
            </td>
        </tr>
        <% 
                }
                resultSet.close();
                 preparedStatement = connection.prepareStatement("SELECT * FROM orders INNER JOIN history ON orders.book_id = history.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    String paymentType = resultSet.getString("payment_type");
        %>
        <tr>
            <td><h3><%= bookName %></h3></td>
            <td><h3><%= price %></h3></td>
            <td><h3><%= author %></h3></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td><h3><%= paymentType %></h3></td>
            <td>
                <form action="CancelOrderServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Cancel" class="btn" >
                </form>
            </td>
        </tr>
        <% 
                }
                resultSet.close();
                preparedStatement.close(); 
                
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } finally {
                
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </table>
</body>
</html>
