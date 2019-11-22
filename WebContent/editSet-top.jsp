<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/img/favicon.ico">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/dashboard.css">
    <link rel="stylesheet" href="assets/css/add-box.css">
    <style>
        body{background: white;}
    </style>
    <title>Update Set-top Box</title>
</head>
<body>
<%
try{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	//ResultSet fs=null;
	String info="oracle.jdbc.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:XE";
	String un="system";
	String pwd="niyati";
	String query="SELECT * FROM GenericSetTopBox where settopboxtype='Standard'";
	//String fquery="select* from Features where settopboxtype='gjhygjh'";
	Class.forName(info);
	
	con=DriverManager.getConnection(url,un,pwd);
	
	st=con.createStatement();
	
	rs=st.executeQuery(query);
	//fs=st.executeQuery(fquery);
		

%>
    <header class="admin-header">
        <div class="admin-header__links">
            <a href="dashboard.jsp"><img class="image image--header" src="assets/img/eternity.png" alt=""></a>
            <div class="admin-header__content">
                <a href="settop.html" id="admin-header__content__data">Set-top box</a>
                <a href="channels.html" id="admin-header__content__data">Channels</a>
                <a href="packages.html" id="admin-header__content__data">Packages</a>
            </div>
        </div>
        <button class="button">Logout</button>
    </header>
    <div class="add-settop">
        <div class="content-container">
        <%
                        
                        while(rs.next())
                        {
                        
                        
                        %>
            <h1 class="add-settop__header">Update Set-top Box</h1>
            <form class="form" action="Controller" method="post">
            <input type="hidden" name="option" value="addSetupBox">
                <div class="form__content">
                    <label for="set-top">Set-top box type</label>
                    <input class="text-input" type="text" name="typeSetopBox" value="<%out.print(rs.getString("settopboxtype"));%>">
                </div>
                <div class="form__content">
                
                    <label for="features">Features</label>
                    <select multiple="multiple" size="5" class="form-control" id="exampleFormControlSelect2 name="features">
                    	<option value="MultilingualChannelGuide">Multi-lingual Channel Guide</option>
                    	<option value="GenreWiseChannelGuide">Genre-Wise Channel Guide</option>
                    	<option value="ChildLock">ChildLock:</option>
                    	<option value="ForwardAndRewind">Forward-And-Rewind</option>
                    	<option value="SlowMotion">Slow-Motion</option>
                    	<option value="ProgramReminder">Program Reminder</option>
                    	<option value="PauseAndPlay">Pause-And-Play</option>
                    	<option value="LiveRecording">Live-Recording</option>
                    </select>
                </div>
                <div class="form__content">
                    <label for="price">Price</label>
                    <input class="text-input" type="text" name="price" value="<%out.print(rs.getString("price"));%>">
                </div>
                <div class="form__content">
                    <label for="installCharge">Installation Charge</label>
                    <input class="text-input" type="text" name="iCharge" value="<%out.print(rs.getString("installationcharges"));%>">
                </div>
                <div class="dimension-content">
                    <div class="dimension-content__value">
                        <label for="length">Length (Cm)</label>
                        <input class="text-input" type="text" name="length" value="<%out.print(rs.getInt("length"));%>">
                    </div>
                    <div class="dimension-content__value dimension-content__value--2">
                        <label for="width">Width (Cm)</label>
                        <input class="text-input" type="text" name="width" value="<%out.print(rs.getInt("breadth"));%>">
                    </div>
                    <div class="dimension-content__value dimension-content__value--2">
                        <label for="height">Height (Cm)</label>
                        <input class="text-input" type="text" name="height" value="<%out.print(rs.getInt("width"));%>">
                    </div>
                </div>
                <div class="form__content">
                    <label for="upgradeCharge">Upgradation Charges</label>
                    <input class="text-input" type="text" name="upCharges" value="<%out.print(rs.getInt("upgradationcharges"));%>">
                </div>
                <div class="form__content">
                    <label for="discount">Discount</label>
                    <input class="text-input" type="text" name="discount" value="<%out.print(rs.getInt("discount"));%>">
                </div>
                <div class="form__content">
                    <label for="refund">Billing Type</label>
                    <input class="text-input" type="text" name="btype" value="<%out.print(rs.getInt("billingtype"));%>">
                </div>
                <div class="form__content">
                    <label for="refund">Refundable Amount</label>
                    <input class="text-input" type="text" name="refund" value="<%out.print(rs.getInt("refundabledepoamt"));%>">
                </div>
                 
                <div class="form-content--button">
                    <button class="button button--add">Update</button>
                </div>
            </form>
        </div>
    </div>
    <%}
                        }
                    
catch(Exception e)
{
	
}
   
   
%>       
</body>
</html>