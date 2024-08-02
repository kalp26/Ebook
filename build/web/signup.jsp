<%-- 
    Document   : signup
    Created on : Apr 17, 2024, 9:35:38 PM
    Author     : 91762
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
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
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0px 0px 10px 0 rgba(0, 0, 0, 0.7), 0 6px 20px 0 rgba(0, 0, 0, 0.19); 
    width: 300px;
    text-align: center;
}

h1 {
    color: #333;
}

form {
    display: flex;
    flex-direction: column;
}

input {
    margin: 10px 0;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
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

a{
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


h1 {
    color: #333;
}

</style>

</head>
<body>
    
<div class="container">
    <img class="logo" src="ebook1.png" alt="ebooklogo" width="80">
    <h1>Sign Up</h1>
    <form action="SignupServlet" method="post">
        <input type="text" name="name" placeholder="Name">
        <input type="email" name="email" placeholder="Email Address">
        <input type="password" name="password" placeholder="Password">
        <input type="password" name="confirmPassword" placeholder="Confirm Password">
        <button type="submit">Sign Up</button>
        <h5>Already have an account?</h5>
        <a href="login.jsp" class="btn">Log-in</a>
    </form>
</div>
</body>
</html>
