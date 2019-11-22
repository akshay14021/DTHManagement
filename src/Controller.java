import java.io.IOException;
import java.util.ArrayList;

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
		String option = request.getParameter("option");
		System.out.println(option);
		switch(option)
		{
			case "deleteGeneric":
			try {
				DeleteGeneric dg = new DeleteGeneric();
				
				int i = dg.deleteSetTop(request.getParameter("aId"));
				int k = dg.deletefeature(request.getParameter("aId"));
				response.sendRedirect("dashboard.jsp");
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			break;
			
		
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String option = request.getParameter("option");
		System.out.println(option);
		
		switch(option)
		{
		
			case "login": 
				try {
					login lg = new login();
					String x =lg.validate(request.getParameter("uname"), request.getParameter("password"));
					if(x!=null) {
						mysess=request.getSession(true);
				        mysess.setAttribute("username", request.getParameter("uname"));
					}
				    response.sendRedirect(x);
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
				break;
			
				
			case "addSetupBox":
				try {
					AddGenericSetTopBox asb = new AddGenericSetTopBox();
					GenericSetTopBox gsp=new GenericSetTopBox();
					
					gsp.setType(request.getParameter("typeSetopBox"));
					String[] arr=request.getParameterValues("features");
					gsp.setPrice(Integer.parseInt(request.getParameter("price")));
					gsp.setIcharge(Integer.parseInt(request.getParameter("iCharge")));
					gsp.setLength(Integer.parseInt(request.getParameter("length")));
					gsp.setWidth(Integer.parseInt(request.getParameter("width")));
					gsp.setHeight(Integer.parseInt(request.getParameter("height")));
					gsp.setUpcharges(Integer.parseInt(request.getParameter("upCharges")));
					gsp.setBillingtype(request.getParameter("billingtype"));
					gsp.setDiscount(Integer.parseInt(request.getParameter("discount")));
					gsp.setRefund(Integer.parseInt(request.getParameter("refund")));
					
					int i = asb.addSetTopBox(gsp);
					int k = asb.addfeatures(gsp,arr);
					if(i==1 && k==1)
						response.sendRedirect("dashboard.jsp");
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
				break;
				
			case "deleteGeneric":
				try {
					DeleteGeneric dg = new DeleteGeneric();
					
					int i = dg.deleteSetTop(request.getParameter("aId"));
					
					
					if(i==1)
						response.sendRedirect("dashboard.jsp");
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
				break;
			case "editSetupBox":
				try {
				GenericSetTopBox gsp=new GenericSetTopBox();
				EditGenericSetTopBox egsp=new EditGenericSetTopBox();
				EditSetTop esp= new EditSetTop();

				gsp.setType(request.getParameter("typeSetopBox"));
				String[] arr=request.getParameterValues("features");
                gsp.setPrice(Integer.parseInt(request.getParameter("price")));
                gsp.setIcharge(Integer.parseInt(request.getParameter("iCharge")));
                gsp.setLength(Integer.parseInt(request.getParameter("length")));
                gsp.setWidth(Integer.parseInt(request.getParameter("width")));
                gsp.setHeight(Integer.parseInt(request.getParameter("height")));
                gsp.setUpcharges(Integer.parseInt(request.getParameter("upCharges")));
                gsp.setBillingtype(request.getParameter("billingtype"));
                gsp.setDiscount(Integer.parseInt(request.getParameter("discount")));
                gsp.setRefund(Integer.parseInt(request.getParameter("refund")));
                int i = esp.EditTopSetTopBox(gsp);
                int k = esp.edfeatures(gsp,arr);
                if(i==1 && k==1)
                    response.sendRedirect("dashboard.jsp");
				}
				catch(Exception e)
				{
                System.out.println(e);
				}
				break;	
			default:
            	System.out.print("NOthing is working");
            	break;
				
			
				
		}
		
		
		
	}

}
