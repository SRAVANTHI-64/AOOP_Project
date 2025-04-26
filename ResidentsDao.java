package neighbhourhoodwatchapp.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import neighbhourhoodwatchapp.model.Residents;

public class ResidentsDao {
	
	public int registerResident(Residents resident) throws ClassNotFoundException{
		String INSERT_USERS_SQL="INSERT INTO residents" + " (fname,lname,age,gender,flat_no,email_address,mobile_no) VALUES" +"(?,?,?,?,?,?,?);";
		
		int result=0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/aoop?useSSL=false", "root", "sravmek_0316");
             // Step 2: Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            
            preparedStatement.setString(1, resident.getFirstName());
            preparedStatement.setString(2, resident.getLastName());
            preparedStatement.setString(3, resident.getAge());
            preparedStatement.setString(4, resident.getGender());
            preparedStatement.setString(5, resident.getFlatno());
            preparedStatement.setString(6, resident.getEmailid());
            preparedStatement.setString(7, resident.getMobileno());

            System.out.println(preparedStatement);

            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // Process SQL exception
            e.printStackTrace();
        }
        return result;
    }
}
