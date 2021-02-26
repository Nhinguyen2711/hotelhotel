<%-- 
    Document   : HomeAdmin
    Created on : Feb 7, 2021, 1:23:39 PM
    Author     : Nhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>E-Hotel</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
        <link rel="stylesheet" href="../resources/assets/css/ready.css">
        <link rel="stylesheet" href="../resources/assets/css/demo.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="main-header">
                <div class="logo-header">
                    <a href="index.html" class="logo">
                        E-Hotel
                    </a>
                    <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
                </div>
                <nav class="navbar navbar-header navbar-expand-lg">
                    <div class="container-fluid">

                        <form class="navbar-left navbar-form nav-search mr-md-3" action="">
                            <div class="input-group">
                                <input type="text" placeholder="Search ..." class="form-control">
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        <i class="la la-search search-icon"></i>
                                    </span>
                                </div>
                            </div>
                        </form>
                        <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">

                            <li class="nav-item dropdown">
                                <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="../resources/assets/img/profile.jpg" alt="user-img" width="36" class="img-circle"><span >Hizrian</span></span> </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li>
                                        <div class="user-box">
                                            <div class="u-img"><img src="../resources/assets/img/profile.jpg" alt="user"></div>
                                            <div class="u-text">
                                                <h4>Hizrian</h4>
                                                <p class="text-muted">hello@themekita.com</p><a href="profile.html" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                                        </div>
                                    </li>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><i class="ti-user"></i> My Profile</a>
                                    <a class="dropdown-item" href="#"></i> My Balance</a>
                                    <a class="dropdown-item" href="#"><i class="ti-email"></i> Inbox</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><i class="ti-settings"></i> Account Setting</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><i class="fa fa-power-off"></i> Logout</a>
                                </ul>
                                <!-- /.dropdown-user -->
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="sidebar">
                <div class="scrollbar-inner sidebar-wrapper">
                    <div class="user">
                        <div class="photo">
                            <img src="../resources/assets/img/profile.jpg">
                        </div>
                        <div class="info">
                            <a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
                                <span>
                                    Hizrian
                                    <span class="user-level">Administrator</span>
                                    <span class="caret"></span>
                                </span>
                            </a>
                            <div class="clearfix"></div>

                            <div class="collapse in" id="collapseExample" aria-expanded="true" style="">
                                <ul class="nav">
                                    <li>
                                        <a href="#profile">
                                            <span class="link-collapse">My Profile</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#edit">
                                            <span class="link-collapse">Edit Profile</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#settings">
                                            <span class="link-collapse">Settings</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <ul class="nav">
                        <li class="nav-item active">
                            <a href="<c:url value="/admin/" />">
                                <i class="la la-dashboard"></i>
                                <p>Home</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/Listroom" />">
                                <i class="la la-table"></i>
                                <p>Rooms</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/ListService" />">
                                <i class="la la-keyboard-o"></i>
                                <p>Service</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<c:url value="/admin/ListBooking" />">
                                <i class="la la-th"></i>
                                <p>Booking</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="notifications.html">
                                <i class="la la-bell"></i>
                                <p>promotions</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="typography.html">
                                <i class="la la-font"></i>
                                <p>Report</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="icons.html">
                                <i class="la la-fonticons"></i>
                                <p>Operation</p>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="main-panel">
                <div class="content">
                    <div class="container-fluid">
                        <h4 class="page-title"></h4>
                        <div class="row">
                            <div class="col-md-3">
                                <a href="<c:url value="/admin/Listroom" />"   style="text-decoration:none;">
                                    <div class="card card-stats card-warning">
                                        <div class="card-body ">
                                            <div class="row">

                                                <div class="col-7 d-flex align-items-center">

                                                    <div class="numbers">

                                                        <p class="card-category">Rooms</p>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="<c:url value="/admin/ListService" />"   style="text-decoration:none;">
                                    <div class="card card-stats card-success">
                                        <div class="card-body ">
                                            <div class="row">

                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Service</p>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="<c:url value="/admin/ListBooking" />"   style="text-decoration:none;">
                                <div class="card card-stats card-danger">
                                    <div class="card-body">
                                        <div class="row">

                                            <div class="col-7 d-flex align-items-center">
                                                <div class="numbers">
                                                    <p class="card-category">Booking</p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <div class="card card-stats card-primary">
                                    <div class="card-body ">
                                        <div class="row">

                                            <div class="col-7 d-flex align-items-center">
                                                <div class="numbers">
                                                    <p class="card-category">Promotions</p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card card-stats card-dangers">
                                    <div class="card-body">
                                        <div class="row">

                                            <div class="col-7 d-flex align-items-center">
                                                <div class="numbers">
                                                    <p class="card-category">Operation</p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </body>
    <script src="../resources/assets/js/core/jquery.3.2.1.min.js"></script>
    <script src="../resources/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
    <script src="../resources/assets/js/core/popper.min.js"></script>
    <script src="../resources/assets/js/core/bootstrap.min.js"></script>
    <script src="../resources/assets/js/plugin/chartist/chartist.min.js"></script>
    <script src="../resources/assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
    <script src="../resources/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
    <script src="../resources/assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
    <script src="../resources/assets/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
    <script src="../resources/assets/js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
    <script src="../resources/assets/js/plugin/chart-circle/circles.min.js"></script>
    <script src="../resources/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <script src="../resources/assets/js/ready.min.js"></script>
    <script src="../resources/assets/js/demo.js"></script>
</html>