<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
    <style>
        .allc .box-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
            gap: 1.5rem;
            padding-bottom: 4rem;
        }
        .allc .box-container .box {
            overflow: hidden;
            border-radius: .5rem;
            background: #fff;
        }
        .allc.box-container .box:hover {
            overflow: hidden;
            border-radius: .5rem;
            background: #fff;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .allc .box-container .box img {
            height: 50rem;
            width: 100%;
            object-fit: cover;
        }      
    </style>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <%@ include file="header.jsp" %>
    <br><br><br><br><br><br>
    <br><br><br>
    <h1 class="heading"><span>History</span></h1>
    <section class="allc" id="allc">
        <div class="box-container">
            <% 
                String url = "jdbc:mysql://localhost:3306/ebook?zeroDateTimeBehavior=convertToNull";
                String user = "root";
                String password = "";

                try {
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");

                   
                    Connection connection = DriverManager.getConnection(url, user, password);
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery("SELECT * FROM history");

                    while (resultSet.next()) {
                        int bookId = resultSet.getInt("book_id");
                        String bookName = resultSet.getString("book_name");
                        double price = resultSet.getDouble("price");
                        String author = resultSet.getString("author");
                        String imageUrl = resultSet.getString("image_url");
            %>
            <div class="box">
                <img src="<%= imageUrl %>" alt="Book Image">
                <div class="book-details">
                    <h2><%= bookName %></h2>
                    <p>Author: <%= author %></p>
                    <p>Price: <%= price %></p>
                    <form action="cart" method="post">
                        <input type="hidden" name="bookId" value="<%= bookId %>">
                        <input type="submit" class="btn" value="Add to Cart">
                    </form>
                </div>
            </div>
            <% 
                    }
                    resultSet.close();
                    statement.close();
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
            %>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>
