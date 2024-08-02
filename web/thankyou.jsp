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
    <div class="us" id="aboutus">
        <h1 align="center"> <img src="ebook1.png" width="50"></h1>
    </div><br>
<br>
    
    <div class="us">
        Your payment is done successfully.  <br><br> Your product will be delivered in next 5-6 working days.
        <br><br> If you have any issues regarding the product or the delivery, you can contact us on our mail ID and we will try to answer you as soon as possible.  
    </div> <br><br>
    <div class="us">thank you for visiting our with site.</div><br><br><br><br>
     <%@ include file="footer.jsp" %>
</body>
</html>