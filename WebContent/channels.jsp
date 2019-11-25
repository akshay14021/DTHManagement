<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/img/favicon.ico">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/channels.css">
    <style>
        body {background: white;}
    </style>
    <title>Channels</title>
</head>
<body>
	<header class="admin-header">
        <div class="admin-header__links">
            <a href="dashboard.jsp"><img class="image image--header" src="assets/img/eternity.png" alt=""></a>
            <div class="admin-header__content">
                <a href="dashboard.jsp" id="admin-header__content__data">Set-top box</a>
                <a href="channels.jsp" id="admin-header__content__data">Channels</a>
                <a href="packages.jsp" id="admin-header__content__data">Packages</a>
            </div>
        </div>
        <button class="button">Logout</button>
    </header>
     <div class="admin-dashboard">
        <div class="content-container">
            <div class="admin-dashboard__content">
                <h1 class="admin-dashboard__header">Channel Details</h1>
                <div class="admin-dashboard__table">
                    <table>
                        <thead class="thead-data">
                            <tr>
                                <th class="thead__content">Name</th>
                                <th class="thead__content">Band</th>
                                <th class="thead__content">Video Carrier Freq</th>
                                <th class="thead__content">Audio Carrier Freq</th>
                                <th class="thead__content">Channel Charge Type</th>
                                <th class="thead__content">Channel Transmission</th>
                                <th class="thead__content">Channel Charge</th>
                                <th colspan="2" class="thead__content">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table__body">
                            <tr>
                                <td class="tdata__content"></td>
                                <td class="tdata__content"></td>
                                <td class="tdata__content"></td>
                                <td class="tdata__content"></td>
                                <td class="tdata__content"></td>
                                <td class="tdata__content"></td>
                                <td class="tdata__content"></td>
                                <td><button id="button--delete" class='btn btn-danger' name="option" value="deleteGeneric">Delete</button></td>
                                <td><button id="button--edit" class="btn btn-warning">Edit</button></td>
                            </tr>
                        </tbody>
                        </table>
                </div>
                <a href="addChannel.jsp"><button class="button button--add">Add New Channel</button></a>
            </div>
        </div>
    </div> 
</body>
</html>