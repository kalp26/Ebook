<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        a.button {
            display: block;
            width: 120px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a.button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<%

String jdbcUrl = "jdbc:mysql://localhost:3306/ebook?zeroDateTimeBehavior=convertToNull";
String dbUsername = "root";
String dbPassword = "";


Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
    
    Class.forName("com.mysql.jdbc.Driver");
    
    
    conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
    
 
    String sql = "SELECT * FROM users";
    
    
    stmt = conn.createStatement();
    rs = stmt.executeQuery(sql);
%>

    <h1>User Information</h1>
    <table>
        <tr>
            <th>User ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
        </tr>
        <% 
            
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("user_id") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("password") %></td>
        </tr>
        <% 
            }
        %>
    </table>

    <a href="userinfo.jsp" class="button">Return</a>

<%
} catch (Exception e) {
    e.printStackTrace();
} finally {
   
    try { if (rs != null) rs.close(); } catch (SQLException e) { }
    try { if (stmt != null) stmt.close(); } catch (SQLException e) {  }
    try { if (conn != null) conn.close(); } catch (SQLException e) {  }
}
%>

</body>
</html>
