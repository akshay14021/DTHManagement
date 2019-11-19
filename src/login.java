import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpSession;

public class login {
	
	public static Connection con=null;
	public static Statement st=null;
	public static ResultSet rs=null;
	
	public String validate(String uname, String password) throws SQLException, ClassNotFoundException
	{
		Model conn = new Model();
		con =conn.getConnection();
		
		st=con.createStatement();
		String query="SELECT * FROM usertable";
		rs=st.executeQuery(query);
		
		while(rs.next())
		{

			if(uname.equals(rs.getString("uname")) && password.equals(rs.getString("pwd")))
			{
				if(rs.getString("usertype").equals("admin"))
				{
					return "dashboard.jsp";
				}
				else if(rs.getString("usertype").equals("cust1"))
				{
					return "cust.jsp";
				}
			}
		}
		return "error.jsp";
		
	}

}
