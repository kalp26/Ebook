<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body .container{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 80px;
        }
        .container {
            display: flex;
        }
        .container > .box {
            flex: 1;
            margin: 10px;
            padding: 20px;
            background-color: white;
            border: 1px solid #ccc;
            text-align: center;
            transition: all 0.3s ease;
        }
        .container > .box a {
            display: block;
            margin-top: 10px;
            padding: 8px 16px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .container > .box a:hover {
            background-color: #0056b3;
        }
        .container > .box img {
            width: 200px;
            height: 200px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    
    <div class="container">
        
        <% 
            
            String username = (String) session.getAttribute("name");
            if (username != null && !username.isEmpty()) {
                if (username.equals("admin")) {
        %>
            
            <div class="box">
                <h2>Welcome, <%= username %></h2>
                <img src="admin.png" alt="Admin Image">
                <a href="LogoutServlet">Logout</a>
            </div>
            
            <div class="box">
                <h2>User Data</h2>
                <img src="userdata.png" alt="User Data Image">
                <a href="user_data.jsp">View User Data</a>
            </div>
            
            <div class="box">
                <h2>Add Books</h2>
                <img src="editbook.png" alt="Edit Books Image">
                <a href="edit_books.jsp">Edit Books</a>
            </div>
        <% 
                } else {
        %>
           
            <div class="box">
                <h2>Welcome, <%= username %></h2>
                <img src="user.png" alt="User Image">
                <a href="LogoutServlet">Logout</a>
            </div>
            
            <div class="box">
                <h2>Order History</h2>
                <img src="loginhistory.png" alt="Order History Image">
                <a href="orderHistory.jsp">View Order History</a>
            </div>
           
            <div class="box">
                <h2>Sell your books</h2>
                <img src="sellbook.png" alt="Sell Books Image">
                <a href="sell_books.jsp">Sell books</a>
            </div>
        <% 
                }
            } else { 
        %>
            
            <div class="box">
                <h2>Login/Sign up</h2>
                <img src="user.png" alt="Login Image">
                <a href="login.jsp">Login/Signup</a>
            </div>
            
        <% } %>
        
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
