import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.*;

public class EditGenericSetTopBox {
	public static Connection con=null;
	public static PreparedStatement st=null;
	public static ResultSet rs=null;
	
	public int editSetTopBox(GenericSetTopBox gsp) throws SQLException, ClassNotFoundException
	{
		Model conn = new Model();
		con =conn.getConnection();
		
		String query="select* from GenericSetTopBox where settopboxtype='Standard'";
		st=con.prepareStatement(query);
		
		st.setString(1,gsp.getType());
		st.setInt(2,gsp.getLength());
		st.setInt(3,gsp.getWidth());
		st.setInt(4,gsp.getHeight());
		st.setInt(5,gsp.getPrice());
		st.setInt(6,gsp.getIcharge());
		st.setInt(7,gsp.getUpcharges());
		st.setInt(8,gsp.getDiscount());
		st.setString(9,gsp.getBillingtype());
		st.setInt(10,gsp.getRefund());
		
		
		return st.executeUpdate();
		
	}
	
	public int addfeatures(GenericSetTopBox gsp, String[] arr) throws SQLException, ClassNotFoundException
	{
		Model conn = new Model();
		con =conn.getConnection();
		
		String query="Insert into Features(FeatureId,MultilingualChannelGuide,GenreWiseChannelGuide,ChildLock,ForwardAndRewind,SlowMotion,ProgramReminder,PauseAndPlay,LiveRecording,settopboxtype) values (?,?,?,?,?,?,?,?,?,?)";
		st=con.prepareStatement(query);
		
		st.setInt(1,0);
		
		
		List<String> wordList = Arrays.asList(arr);
		
		if(wordList.contains("MultilingualChannelGuide"))
			st.setString(2, "yes");
		else
			st.setString(2, "no");
		
		if(wordList.contains("GenreWiseChannelGuide"))
			st.setString(3, "yes");
		else
			st.setString(3, "no");
		
		if(wordList.contains("ChildLock"))
			st.setString(4, "yes");
		else
			st.setString(4, "no");
		
		if(wordList.contains("ForwardAndRewind"))
			st.setString(5, "yes");
		else
			st.setString(5, "no");
		
		if(wordList.contains("SlowMotion"))
			st.setString(6, "yes");
		else
			st.setString(6, "no");
		
		if(wordList.contains("ProgramReminder"))
			st.setString(7, "yes");
		else
			st.setString(7, "no");
		
		if(wordList.contains("PauseAndPlay"))
			st.setString(8, "yes");
		else
			st.setString(8, "no");
		
		if(wordList.contains("LiveRecording"))
			st.setString(9, "yes");
		else
			st.setString(9, "no");
		
		st.setString(10,gsp.getType());
		
		return st.executeUpdate();
	}

}