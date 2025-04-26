package neighbhourhoodwatchapp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import neighbhourhoodwatchapp.model.Reports;

public class ReportsDao {
    
    public int submitReport(Reports report) throws ClassNotFoundException {
        String INSERT_REPORT_SQL = "INSERT INTO reports" +
            " (title, description, location, reported_at) VALUES (?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/aoop?useSSL=false", "root", "sravmek_0316");

             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_REPORT_SQL)) {

            preparedStatement.setString(1, report.getTitle());
            preparedStatement.setString(2, report.getDescription());
            preparedStatement.setString(3, report.getLocation());
            preparedStatement.setTimestamp(4, report.getReportedAt());

            System.out.println(preparedStatement);

            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
}
