<%-- 
    Document   : HomeAdmin
    Created on : Feb 7, 2021, 1:23:39 PM
    Author     : Nhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
        <link rel="stylesheet" href="../resources/assets/css/ready.css">
        <link rel="stylesheet" href="../resources/assets/css/demo.css">
        <link rel="stylesheet" href="../resources/assets/css/style.css">
        <link rel="stylesheet" href="../resources/assets/css/bootstrap.css">
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
            <!-- Basic Table -->
            <div class="main-panel">
                <div class="content">                   
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">Form Room</div>
                        </div>                       
                        <form:form class="form-horizontal" action="addRoom" method="POST" modelAttribute="room">
                            <div class="card-body">
                                <form:hidden path="roomid" />
                                <div class="form-group">
                                    <label for="largeInput">Room Number</label>
                                    <form:input path="roomnumber" class="form-control form-control-lg" id="largeInput" placeholder="Large Input"/>
                                </div>
                                <div class="form-group">
                                    <label for="largeSelect">Type Name</label>
                                    <form:select path="roomtype.typename" class="form-control form-control-lg" id="largeSelect">
                                        <form:option value="Standard(STD)"/>
                                        <form:option value="Superior(SUP)"/>
                                        <form:option value="Deluxe(DLX)"/>
                                        <form:option value="Suite(SUT)"/>                                   
                                    </form:select>
                                </div>
                                <div class="form-group">
                                    <label for="comment">Description</label>
                                    <form:textarea path="roomtype.description" class="form-control" id="comment" rows="5"/>

                                    </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="defaultSelect">Number People</label>
                                    <form:select path="roomtype.numberofpeopke" class="form-control form-control" id="defaultSelect">
                                        <form:option value="1"/>
                                        <form:option value="2"/>
                                        <form:option value="3"/>
                                        <form:option value="4"/>
                                        <form:option value="5"/>
                                        <form:option value="6"/>
                                        <form:option value="7"/>
                                        <form:option value="8"/>
                                        <form:option value="9"/>
                                        <form:option value="10"/>
                                    </form:select>
                                </div>
                                <div class="form-group">
                                    <label for="largeInput">Floor</label>
                                    <form:input path="floor" class="form-control form-control" id="defaultInput" placeholder="Default Input"/>
                                </div>
                                <div class="form-group">
                                    <label for="smallInput">Price</label>
                                    <form:input path="price" class="form-control form-control-sm" id="smallInput" placeholder="Small Input"/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlFile1">Image File</label>
                                    <form:input  path="roomtype.image" type="file" class="form-control-file" id="exampleFormControlFile1"/>
                                </div>
                                <div class="card-action">
                                    <button class="btn btn-success">Submit</button>
                                    <button class="btn btn-danger">Cancel</button>
                                </div>
                            </div>
                        </form:form>

                    </div>
                </div>  
            </div> 
            <!-- #END# Basic Table -->


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