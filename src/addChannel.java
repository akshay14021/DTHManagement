import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.*;

public class addChannel {
	
	public static Connection con=null;
	public static PreparedStatement st=null;
	public static ResultSet rs=null;
	
	public int addChannels(ChannelDetails cd) throws SQLException, ClassNotFoundException
	{
		Model conn = new Model();
		con =conn.getConnection();
		
		String query="Insert into channels values (?,?,?,?,?,?,?,?)";
		st=con.prepareStatement(query);
		
		st.setInt(1,112);
		st.setString(2,cd.getChname());
		st.setString(3,cd.getChband());
		st.setString(4,cd.getChvfreq());
		st.setString(5,cd.getChafreq());
		st.setString(6,cd.getChtypefta());
		st.setString(7,cd.getChtranstypestd());
		st.setInt(8,cd.getChcharges());
		
		
		return st.executeUpdate();
		
	}

}
