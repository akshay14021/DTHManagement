<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
    <title>Add Channel</title>
</head>
<body>
<%
    HttpSession mysess=request.getSession();
    //String abc= mysess.getAttribute("username").toString();
    if(mysess.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
    }       
%>
	<header class="admin-header">
        <div class="admin-header__links">
            <a href="dashboard.jsp"><img class="image image--header" src="assets/img/eternity.png" alt=""></a>
            <div class="admin-header__content">
                <a href="dashboard.jsp" id="admin-header__content__data">Set-top box</a>
                <a href="channels.jsp" id="admin-header__content__data">Channels</a>
                <a href="packages.jsp" id="admin-header__content__data">Packages</a>
            </div>
        </div>
        <a href="logout.jsp"><button class="button">Logout</button></a>
    </header>
    
    <div class="add-settop">
        <div class="content-container">
            <h1 class="add-settop__header">Add Channel</h1>
            <form class="form" action="Controller" method="post">
            <input type="hidden" name="option" value="addChannel">
                <div class="form__content">
                    <label for="ChannelName">Channel Name</label>
                    <input class="text-input" type="text" name="channelName">
                </div>
                <div class="form__content">
                    <label for="band">Band</label>
                    <select name="band" class="text-input">
                    	<option value="I">I</option>
                    	<option value="II">II</option>
                    	<option value="III">III</option>
                    </select>
                </div>
                <div class="form__content">
                    <label for="VCF">Video Carrier Frequency</label>
                    <input class="text-input" type="text" name="vfreq">
                </div>
                <div class="form__content">
                    <label for="ACF">Audio Carrier Frequency</label>
                    <input class="text-input" type="text" name="afreq">
                </div>
                <div class="form__content">
                    <label for="CCT">Channel Charge Type</label>
                    <select id="CCT" class="text-input" name="cct">
                    	
                    	<option id="prepaid" value="FTA (Free to Air)">FTA (Free to Air)</option>
                    	<option id="postpaid" value="Paid" selected>Paid</option>
                    </select>
                </div>
                <div class="form__content">
                    <label for="CTT">Channel Transmission Type</label>
                    <select id="CTT" class="text-input" name="ctt">
                    	<option id="prepaid" value="Standard">Standard</option>
                    	<option id="postpaid" value="HD">HD</option>
                    </select>
                </div>
                <div class="form__content">
                    <label for="channelCharge">Channel Charge</label>
                    <input id="refundAmount" class="text-input" type="text" name="charge">
                </div>
                <div class="form-content--button">
                    <button class="button button--add">Add Channel Box</button>
                </div>
            </form>
        </div>
    </div>
    <script src="assets/js/channelLogic.js"></script>
</body>
</html>