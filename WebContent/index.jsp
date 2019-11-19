<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/img/favicon.ico">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/login.css">
    <title>Infinity DTH Services</title>
</head>
<body>
    <div class="login-layout">
        <img class="image" src="assets/img/image.jpg" alt="">
        <div class="login-layout__content" id="login-content">
            <img src="assets/img/eternity.png" alt="">
            <h1 class="login-layout__title">Infinity DTH Services</h1>
            <p class="login-layout__subtitle">Your one place for entertainment</p>
            <form class="form" action="Controller" method="post" >
            	<input type="hidden" name="option" value="login">   
                <input class="text-input" id="uname" type="text" name="uname" placeholder="Username" required>
                <input class="text-input" id="pass"  type="password" name="password" placeholder="Password" required>
                <button id="button" class="button">Login</button>
            </form>
        </div>
    </div>

    <script src="assets/js/authentication.js"></script>
</body>
</html>