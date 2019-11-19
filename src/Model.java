import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Model {
	
	public static Connection con=null;
	
	public Connection getConnection() throws SQLException, ClassNotFoundException
	{
		String info="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:XE";
		String un="system";
		String pwd="niyati";
		Class.forName(info);
		con=DriverManager.getConnection(url,un,pwd);
		return con;
	}
	

}
