<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registered Residents</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Registered Residents</h1>

    <%
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aoop", "root", "sravmek_0316");

            String query = "SELECT * FROM residents";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
    %>

    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Flat No</th>
            <th>Email Address</th>
            <th>Mobile No</th>
        </tr>

        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("fname") %></td>
            <td><%= rs.getString("lname") %></td>
            <td><%= rs.getString("age") %></td>
            <td><%= rs.getString("gender") %></td>
            <td><%= rs.getString("flat_no") %></td>
            <td><%= rs.getString("email_address") %></td>
            <td><%= rs.getString("mobile_no") %></td>
        </tr>
        <%
            }
        %>
    </table>

    <%
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error loading residents: " + e.getMessage() + "</p>");
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    %>

</body>
</html>
