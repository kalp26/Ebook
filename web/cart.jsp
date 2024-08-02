<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.http.*, java.io.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
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
    <h1>Cart</h1>
    <table border="1">
        <tr>
            <th>Book Name</th>
            <th>Price</th>
            <th>Author</th>
            <th>Image</th>
            <th>Remove</th>
        </tr>
        <% 
            String url = "jdbc:mysql://localhost:3306/ebook?zeroDateTimeBehavior=convertToNull";
            String user = "root";
            String password = "";

            double totalPrice = 0;
            
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

                preparedStatement = connection.prepareStatement("SELECT * FROM cart INNER JOIN action ON cart.book_id = action.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    totalPrice += price;
        %>
        <tr>
            <td><h2><%= bookName %></h2></td>
            <td><h2><%= price %></h2></td>
            <td><h2><%= author %></h2></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td>
                <form action="RemoveFromCartServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Remove" class="btn" >
                </form>
            </td>
        </tr>
          <% 
                }
                resultSet.close();
                preparedStatement.close();
                preparedStatement = connection.prepareStatement("SELECT * FROM cart INNER JOIN romance ON cart.book_id = romance.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    totalPrice += price;
        %>
        <tr>
            <td><h2><%= bookName %></h2></td>
            <td><h2><%= price %></h2></td>
            <td><h2><%= author %></h2></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td>
                <form action="RemoveFromCartServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Remove" class="btn" >
                </form>
            </td>
        </tr>
        <% 
                }
                resultSet.close();
                preparedStatement.close();
                preparedStatement = connection.prepareStatement("SELECT * FROM cart INNER JOIN drama ON cart.book_id = drama.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    totalPrice += price;
        %>
        <tr>
            <td><h2><%= bookName %></h2></td>
            <td><h2><%= price %></h2></td>
            <td><h2><%= author %></h2></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td>
                <form action="RemoveFromCartServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Remove" class="btn" >
                </form>
            </td>
        </tr>
        <% 
                }
                resultSet.close();
                preparedStatement.close();
                preparedStatement = connection.prepareStatement("SELECT * FROM cart INNER JOIN horror ON cart.book_id = horror.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    totalPrice += price;
        %>
        <tr>
            <td><h2><%= bookName %></h2></td>
            <td><h2><%= price %></h2></td>
            <td><h2><%= author %></h2></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td>
                <form action="RemoveFromCartServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Remove" class="btn" >
                </form>
            </td>
        </tr>
        <% 
                }
                resultSet.close();
                preparedStatement.close();
                preparedStatement = connection.prepareStatement("SELECT * FROM cart INNER JOIN Science_Fiction ON cart.book_id = Science_Fiction.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    totalPrice += price;
        %>
        <tr>
            <td><h2><%= bookName %></h2></td>
            <td><h2><%= price %></h2></td>
            <td><h2><%= author %></h2></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td>
                <form action="RemoveFromCartServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Remove" class="btn" >
                </form>
            </td>
        </tr>
        <% 
                }
                resultSet.close();
                preparedStatement.close();
                preparedStatement = connection.prepareStatement("SELECT * FROM cart INNER JOIN history ON cart.book_id = history.book_id WHERE user_id = ?");
                preparedStatement.setInt(1, userId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int bookId = resultSet.getInt("book_id");
                    String bookName = resultSet.getString("book_name");
                    double price = resultSet.getDouble("price");
                    String author = resultSet.getString("author");
                    String imageUrl = resultSet.getString("image_url");
                    totalPrice += price;
        %>
        <tr>
            <td><h2><%= bookName %></h2></td>
            <td><h2><%= price %></h2></td>
            <td><h2><%= author %></h2></td>
            <td><img src="<%= imageUrl %>" alt="Book Image" width="100"></td>
            <td>
                <form action="RemoveFromCartServlet" method="post">
                    <input type="hidden" name="bookId" value="<%= bookId %>">
                    <input type="submit" value="Remove" class="btn" >
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
        <p><h2>Total Price: <%= totalPrice %></h2></p>
    <form action="payment.jsp" method="post">
        <input type="submit" value="Checkout" class="btn">
    </form>

</body>
</html>
