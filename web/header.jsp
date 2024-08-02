<%-- 
    Document   : header
    Created on : Apr 17, 2024, 3:54:04 PM
    Author     : 91762
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ebook</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="header">
        <img class="logo" src="ebook1.png" onclick="" alt="" width="50">
        <nav class="navbar">
            <a href="index.jsp">Home</a>
            <a href="action.jsp">Action</a>
            <a href="romance.jsp">Romance</a>
            <a href="drama.jsp">Drama</a>
            <a href="horror.jsp">Horror</a>
            <a href="scienceFiction.jsp">Science Fiction</a>
            <a href="history.jsp">History</a>
        </nav>

        <div class="icons">
          <!--<label class="bi-search" id="search-btn"></label>-->
            <form action="search.jsp" method="GET" id="search-form">
                <input type="text" name="query" placeholder="Search books here">
                <button type="submit" id="search-btn" style="border: none; background: none;">
                    <img src="search_icon.webp" alt="Search Icon" width="24">
                </button>
            </form>
            <a href="cart.jsp"><label class="bi-cart" id="cart-btn"></label></a>
            <a href="userinfo.jsp"><label class="bi bi-person" id="login-btn" ></label></a>
        </div>

    </header>
</body>
</html>

