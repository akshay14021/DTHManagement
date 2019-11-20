<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                                <td>
                                    <button type="button" class="button button--feature" data-toggle="modal" data-target="#exampleModal">
                                    Show Features
                                    </button>
                                </td>
                            </tr>
                        </tbody>  
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
                                <td>
                                    <button type="button" class="button button--feature" data-toggle="modal" data-target="#exampleModal">
                                        Show Features
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <a href="addSet-top.jsp"><button class="button button--add">Add New Set-top Box</button></a>
            </div>
        </div>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Set-top Box Features</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>