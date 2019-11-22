import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

public class EditSetTop {
	public static Connection con=null;
	public static PreparedStatement st=null;
	public static ResultSet rs=null;
	
	public int EditTopSetTopBox(GenericSetTopBox gsp) throws SQLException, ClassNotFoundException
	{
		Model conn = new Model();
		con =conn.getConnection();
		
		String query="update GenericSetTopBox set length=?,breadth=?,width=?,price=?,installationcharges=?,upgradationcharges=?,discount=?,billingtype=?,refundabledepoamt=? where settopboxtype=?";
		st=con.prepareStatement(query);
		
		//st.setString(1,gsp.getType());
		st.setInt(1,gsp.getLength());
		st.setInt(2,gsp.getWidth());
		st.setInt(3,gsp.getHeight());
		st.setInt(4,gsp.getPrice());
		st.setInt(5,gsp.getIcharge());
		st.setInt(6,gsp.getUpcharges());
		st.setInt(7,gsp.getDiscount());
		st.setString(8,gsp.getBillingtype());
		st.setInt(9,gsp.getRefund());
		st.setString(10,gsp.getType());
		
		return st.executeUpdate();
		
	}
	
	public int edfeatures(GenericSetTopBox gsp, String[] arr) throws SQLException, ClassNotFoundException
	{
		Model conn = new Model();
		con =conn.getConnection();

		
		
		String query="update Features set MultilingualChannelGuide=?, GenreWiseChannelGuide=?, ChildLock=?, ForwardAndRewind=?, SlowMotion=?, ProgramReminder=?, PauseAndPlay=?, LiveRecording=? where settopboxtype=?";
		
		st=con.prepareStatement(query);
		
		//st.setInt(1,113);
		
		List<String> wordList = Arrays.asList(arr);
		
		
		
		if(wordList.contains("MultilingualChannelGuide"))
			st.setString(1, "yes");
		else
			st.setString(1, "no");
		if(wordList.contains("GenreWiseChannelGuide"))
			st.setString(2, "yes");
		else
			st.setString(2, "no");
		
		if(wordList.contains("ChildLock"))
			st.setString(3, "yes");
		else
			st.setString(3, "no");
		
		if(wordList.contains("ForwardAndRewind"))
			st.setString(4, "yes");
		else
			st.setString(4, "no");
		
		if(wordList.contains("SlowMotion"))
			st.setString(5, "yes");
		else
			st.setString(5, "no");
		
		if(wordList.contains("ProgramReminder"))
			st.setString(6, "yes");
		else
			st.setString(6, "no");
		
		if(wordList.contains("PauseAndPlay"))
			st.setString(7, "yes");
		else
			st.setString(7, "no");
		
		if(wordList.contains("LiveRecording"))
			st.setString(8, "yes");
		else
			st.setString(8, "no");
		
		st.setString(9,gsp.getType());
		
		return st.executeUpdate();
	}
}
