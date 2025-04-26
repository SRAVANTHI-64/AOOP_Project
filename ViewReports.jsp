<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f9f9f9;
        }
        h2 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #2e6da4;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <h2>Community Reports</h2>

    <%
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aoop", "root", "sravmek_0316");
            String sql = "SELECT title, location, description, reported_at FROM reports ORDER BY reported_at DESC";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
    %>

    <table>
        <tr>
            <th>Title</th>
            <th>Location</th>
            <th>Description</th>
            <th>Reported At</th>
        </tr>
        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("location") %></td>
            <td><%= rs.getString("description") %></td>
            <td><%= rs.getTimestamp("reported_at") %></td>
        </tr>
        <%
            }
        %>
    </table>

    <%
        } catch (Exception e) {
    %>
        <p class="error">Error loading reports: <%= e.getMessage() %></p>
    <%
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
            if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
        }
    %>

</body>
</html>
