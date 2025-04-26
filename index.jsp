<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Neighbourhood Watch App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .container {
            padding: 50px;
        }

        h1 {
            color: #2c3e50;
        }

        .btn {
            display: inline-block;
            margin: 20px 10px;
            padding: 15px 30px;
            font-size: 18px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Neighbourhood Watch App</h1>
        <p>Helping residents stay informed and safe in their community.</p>

        <a href="ResidentsRegister.jsp" class="btn">Register as Resident</a>
        <a href="ResidentsDetails.jsp" class="btn">View Residents</a>
        <a href="ViewReports.jsp" class="btn">View Reports</a>
        <a href="ReportIncident.jsp" class="btn">Report an Incident</a>
    </div>
</body>
</html>
