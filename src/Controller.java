import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	
	HttpSession mysess=null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String option = request.getParameter("option");
		
		switch(option)
		{
		
			case "login": 
				try {
					login lg = new login();
					String x =lg.validate(request.getParameter("uname"), request.getParameter("password"));
					mysess=request.getSession(true);
			        mysess.setAttribute("username", request.getParameter("uname"));
			        response.sendRedirect(x);
					break;
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
			
		}
		
		
		
	}

}
