package neighbhourhoodwatchapp.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import neighbhourhoodwatchapp.dao.ResidentsDao;
import neighbhourhoodwatchapp.model.Residents;



/**
 * Servlet implementation class Residents_Servlet
 */
@WebServlet("/register")
public class ResidentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ResidentsDao residentsDao=new ResidentsDao();
    /**
     * Default constructor. 
     */
    public ResidentsServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/webapp/ResidentsRegister.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String flatno = request.getParameter("flatno");
		String emailid = request.getParameter("emailid");
		String mobileno = request.getParameter("mobileno");
		
		Residents residents = new Residents();
		residents.setFirstName(firstName);
		residents.setLastName(lastName);
		residents.setAge(age);
		residents.setGender(gender);
		residents.setFlatno(flatno);
		residents.setEmailid(emailid);
		residents.setMobileno(mobileno);
		
		try {
			residentsDao.registerResident(residents);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("ResidentsDetails.jsp");
	}

}
