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
    <link rel="stylesheet" href="assets/css/dashboard.css">
    <style>
        body {background: white;}
    </style>
    <title>Dashboard</title>
</head>
<body>
    <header class="admin-header">
        <div class="admin-header__links">
            <a href="dashboard.jsp"><img class="image image--header" src="assets/img/eternity.png" alt=""></a>
            <div class="admin-header__content">
                <a href="settop.html" class="admin-header__content__data">Set-top box</a>
                <a href="channels.html" class="admin-header__content__data">Channels</a>
                <a href="packages.html" class="admin-header__content__data">Packages</a>
            </div>
        </div>
        <button class="button">Logout</button>
    </header>
    <div class="admin-dashboard">
        <div class="content-container">
            <div class="admin-dashboard__content">
                <h1 class="admin-dashboard__header">Set-Top Box Details</h1>
                <div class="admin-dashboard__table">
                    <table>
                        <thead class="thead-data">
                            <tr>
                                <th class="thead__content">Type</th>
                                <th class="thead__content">Price</th>
                                <th class="thead__content">Installation Charges</th>
                                <th class="thead__content">Dimensions</th>
                                <th class="thead__content">Upgradation Charges</th>
                                <th class="thead__content">Discount</th>
                                <th class="thead__content">Billing Type</th>
                                <th class="thead__content">Refundable Price</th>
                            </tr>
                        </thead>
                        <a href="addSet-top.html">
                            <tbody class="table__body">
                                <tr>
                                    <td class="tdata__content">HD</td>
                                    <td class="tdata__content">$50</td>
                                    <td class="tdata__content">$100</td>
                                    <td class="tdata__content">10 X 5 X 3</td>
                                    <td class="tdata__content">$60</td>
                                    <td class="tdata__content">$20</td>
                                    <td class="tdata__content">Prepaid</td>
                                    <td class="tdata__content">$200</td>
                                </tr>
                            </tbody>
                        </a>
                        <tbody class="table__body">
                            <tr>
                                <td class="tdata__content">SD</td>
                                <td class="tdata__content">$30</td>
                                <td class="tdata__content">$100</td>
                                <td class="tdata__content">10 X 6 X 4</td>
                                <td class="tdata__content">$40</td>
                                <td class="tdata__content">$30</td>
                                <td class="tdata__content">Postpaid</td>
                                <td class="tdata__content">$100</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <a href="addSet-top.jsp"><button class="button button--add">Add New Set-top Box</button></a>
            </div>
        </div>
    </div>
</body>
</html>