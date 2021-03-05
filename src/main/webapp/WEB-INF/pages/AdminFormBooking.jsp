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

<html >

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
        <style>
            .error{
                color: red;
            }
        </style>
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
                                <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="../resources/assets/img/profile.jpg" alt="user-img" width="36" class="img-circle"><span >${pageContext.request.userPrincipal.name}</span></span> </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li>
                                        <div class="user-box">
                                            <div class="u-img"><img src="../resources/assets/img/profile.jpg" alt="user"></div>
                                            <div class="u-text">
                                                <h4>${pageContext.request.userPrincipal.name}</h4>
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
                                    <form action="<c:url value='/j_spring_security_logout' />" method="post" id="logoutForm">
                                        <input type="hidden" name="${_csrf.parameterName}"
                                               value="${_csrf.token}" />
                                    </form>
                                    <script>
                                        function formSubmit() {
                                            document.getElementById("logoutForm").submit();
                                        }
                                    </script>
                                    <a class="dropdown-item" href="javascript:formSubmit()"><i class="fa fa-power-off"></i> Logout</a>
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
                                    ${pageContext.request.userPrincipal.name}
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
                            <a href="<c:url value="/user/ListBooking" />">
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
                            <a href="<c:url value="/admin/ListEmployee" />">
                                <i class="la la-font"></i>
                                <p>Employee</p>

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
                            <div class="card-title">Form Booking</div>
                        </div>                       
                        <form:form class="form-horizontal" action="addBooking" method="POST" modelAttribute="booking">
                            <div class="card-body">
                                <form:hidden path="bookingId" />
                                <div class="form-group">
                                    <label for="largeInput">Customer Name</label>
                                    <form:input path="guesName" class="form-control form-control-lg" id="largeInput" placeholder="Large Input"/>
                                    <form:errors path="guesName" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="largeInput">Email</label>
                                    <form:input path="email" class="form-control form-control-lg" id="largeInput" placeholder="Large Input"/>
                                    <form:errors path="email" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="largeInput">Phone Number</label>
                                    <form:input path="phoneNumber" class="form-control form-control-lg" id="largeInput" placeholder="Large Input"/>
                                    <form:errors path="phoneNumber" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="smallInput">Code</label>
                                    <form:input path="bookinguid" class="form-control form-control-sm" id="smallInput" placeholder="Small Input"/>
                                    <form:errors path="bookinguid" cssClass="error"/>
                                </div>
                                <div class="bdate">
                                    <label for="check-in">Check-In</label><br>
                                    <form:input  id="check-in" class="date-picker" path="checkInDate" placeholder="Arrive Date" name="arrival"/>
                                    <i class="mdi mdi-calendar-text"></i>
                                    <form:errors path="checkInDate" cssClass="error"/>
                                </div>
                                <div class="bdate">
                                    <label for="check-out">Check-Out</label><br>
                                    <form:input  id="check-out" class="date-picker" path="checkOutDate" placeholder="Departure Date" name="depature"/>
                                    <i class="mdi mdi-calendar-text"></i>
                                    <form:errors path="checkOutDate" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="largeSelect">Status</label>
                                    <form:select path="status" class="form-control form-control-lg" id="largeSelect">
                                        <form:option value="STAYING"/>
                                        <form:option value="CANCEL"/>
                                        <form:option value="SUCCESS"/>                                 
                                    </form:select>
                                </div>

                                <div class="form-group">
                                    <label for="comment">Note</label>
                                    <form:textarea path="note" class="form-control" id="comment" rows="5"/>

                                    </textarea>
                                </div>

                                <div class="form-group">
                                    <label for="largeInput">NumberOfRooms</label>
                                    <form:input path="numberOfRooms" class="form-control form-control" id="defaultInput" placeholder="Default Input"/>
                                    <form:errors path="numberOfRooms" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="smallInput">Price</label>
                                    <form:input path="price" class="form-control form-control-sm" id="smallInput" placeholder="Small Input"/>
                                    <form:errors path="price" cssClass="error"/>
                                </div>
                                <div class="bdate">
                                    <label for="canceldate">Cancel Date</label><br>
                                    <form:input  id="canceldate" class="date-picker" path="cancelDate" placeholder="Cancel Date" name="arrival"/>
                                    <i class="mdi mdi-calendar-text"></i>
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