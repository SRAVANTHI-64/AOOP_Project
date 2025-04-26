<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Report an Incident</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            padding: 20px;
        }
        .form-container {
            background: white;
            padding: 20px;
            max-width: 500px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            border-radius: 10px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
        }
        input[type="text"], textarea, input[type="datetime-local"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #0066cc;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        button:hover {
            background-color: #0052a3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Report an Incident</h2>
        <form action="ReportServlet" method="post">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>

            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required>

            <label for="reportedAt">Reported At:</label>
            <input type="datetime-local" id="reportedAt" name="reportedAt" required>

            <button type="submit">Submit Report</button>
        </form>
    </div>
</body>
</html>
