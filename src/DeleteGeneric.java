import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.*;

public class DeleteGeneric {
	public static Connection con=null;
	public static Statement st=null;
	public static ResultSet rs=null;
	
	public int deleteSetTop(String type) throws SQLException, ClassNotFoundException
	{
		Model conn = new Model();
		con =conn.getConnection();
		
		String query="Delete from GenericSetTopBox where settopboxtype='"+type+"'";
		st=con.createStatement();
		int x = st.executeUpdate(query);
		return x;
	}
	public int deletefeature(String type) throws SQLException, ClassNotFoundException
	{
		Model conn = new Model();
		con =conn.getConnection();
		
		String query="Delete from features where settopboxtype='"+type+"'";
		st=con.createStatement();
		int x = st.executeUpdate(query);
		return x;
	}

}
