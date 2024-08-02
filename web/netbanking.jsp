<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Card Payment</title>
    <link rel="stylesheet" href="style.css">
       
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: rgba(253, 70, 70, 0.4);
        background: url(loginbook.webp) no-repeat center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        z-index: 10;
        background-color: #fff;
        padding: 10px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px 0 rgba(0, 0, 0, 0.7), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        width: 300px;
    }

    h1 {
        color: #333;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    input{
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
     
    }

    input[type="text"] {
        margin: 10px 0;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        width: 100%;
    }

    button {
        background-color: white;
        color: #000000;
        padding: 10px;
        border: 2px solid rgb(253, 70, 70);
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background-color: rgb(253, 70, 70);
        color: white;
        transition: 0.3s;
    }

    a {
        background-color: white;
        color: #000000;
        padding: 10px;
        border: 2px solid rgb(253, 70, 70);
        border-radius: 4px;
        cursor: pointer;
    }

    a:hover {
        background-color: rgb(253, 70, 70);
        color: white;
        transition: 0.3s;
    }

    h2 {
        color: #333;
    }
</style>

</head>
<body>
    <header class="header">
        <img class="logo" src="ebook1.png" alt="" width="50">
    </header>
    <br><br><br><br><br><br><br><br><br><br>
    <div class="container">
        <h2>Enter Your bank details</h2>
    <form action="ProcessNetbankingPaymentServlet" method="post">
        <input type="text" name="bankName" placeholder="Bank Name" required><br>
        <input type="text" name="accountNumber" placeholder="Account Number" required><br>
        
        <input type="submit" class="btn" value="Submit Payment">
    </form>
</body>
</html>
