<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Chondo Hotel | Home1</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="images/apple-touch-icon.png" type="images/x-icon" rel="shortcut icon">
    <!-- Place favicon.ico in the root directory -->
    
    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />"
              rel="stylesheet">
    <!-- This core.css file contents all plugings css file. -->
    <link href="<c:url value="/resources/css/core.css" />"
              rel="stylesheet">
    <!-- Theme shortcodes/elements style -->
    <link href="<c:url value="/resources/css/shortcode/shortcodes.css" />"
              rel="stylesheet">
    <!-- Theme main style -->
    <link href="<c:url value="/resources/css/style.css" />"
              rel="stylesheet">
    <!-- Responsive css -->
    <link href="<c:url value="/resources/css/responsive.css" />"
              rel="stylesheet">
    <!-- customizer style css -->
    <link href="<c:url value="/resources/css/style-customizer.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.min.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/materialdesignicons.min.css" />"
              rel="stylesheet">
    
    <link href="<c:url value="/resources/css/plugins/animate.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/animated-headlines.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/bootstrap-datepicker3.min.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/bootstrap-select.min.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/jquery-ui.min.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/magnific-popup.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/meanmenu.min.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/owl.carousel.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/owl.theme.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/owl.transitions.css" />"
              rel="stylesheet">
    
    <link href="<c:url value="/resources/css/t-datepicker.min.css" />"
              rel="stylesheet">
    <link href="<c:url value="/resources/css/t-datepicker-main.css" />"
              rel="stylesheet">
    
    
    
    <link href="<c:url value="/resources/css/bootstrap-datepicker3.min.css" />"
              rel="stylesheet">
    
    
    
    <link href="#" data-style="styles" rel="stylesheet">
    
 

    <!-- Modernizr JS -->
    <script src="<c:url value="/resources/js/vendor/modernizr-2.8.3.min" />"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  
    
    <!-- Pre Loader
	============================================ -->
	<div class="preloader">
		<div class="loading-center">
			<div class="loading-center-absolute">
				<div class="object object_one"></div>
				<div class="object object_two"></div>
				<div class="object object_three"></div>
			</div>
		</div>
	</div>

    <div class="wrapper">
        <!--Header section start-->
        <div class="header-section">
            <div class="bg-opacity"></div>
            <div class="top-header sticky-header">
                <div class="top-header-inner">
                    <div class="container">
                        <div class="mgea-full-width">
                            <div class="row">
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="logo mt-15">
                                        <a href="index.html"><img src="images/logo/logo.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col-md-10 col-sm-10 hidden-xs">
                                    <div class="header-top ptb-10">
                                        <div class="adresses">
                                            <div class="phone">
                                                <p>call <span>+012 345 678 102 </span></p>
                                            </div>
                                            <div class="email">
                                                <p>Email: <span>info@example.com</span></p>
                                            </div>
                                        </div>
                                        <div class="social-links">
                                            <a href="#"><i class="mdi mdi-facebook"></i></a>
                                            <a href="#"><i class="mdi mdi-rss"></i></a>
                                            <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                            <a href="#"><i class="mdi mdi-pinterest"></i></a>
                                            <a href="#"><i class="mdi mdi-instagram"></i></a>
                                        </div>
                                    </div>
                                    <div class="menu mt-25">
                                        <div class="menu-list hidden-sm hidden-xs">
                                            <nav>
                                                <ul>
                                                    <li><a href="index.html">home</a></li>
                                                    <li><a href="<c:url value="/listRooms" />">About</a></li>
                                                    <li><a href="gallery.html">Gallery</a></li>
                                                    <li><a href="#">pages<i class="fa fa-angle-down"></i></a>
                                                        <ul class="dropdown_menu">
                                                            <li><a href="404.html">404</a></li>
															<li><a href="booking-information.html">Booking Information</a></li>
															<li><a href="personal-information.html">Personal Information</a></li>
															<li><a href="payment-information.html">Parment Information</a></li>
															<li><a href="booking-done.html">Booking Done</a></li>
															<li><a href="room-booking.html">Room booking</a></li>
															<li><a href="news.html">News</a></li>
															<li><a href="gallery.html">Gallery</a></li>
															 <li><a href="staff.html">Staff</a></li>
															<li><a href="our-room.html">Room</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="contact-us.html">Contact</a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                        <div class="search-bar-icon">
                                           <a class="search-open" href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>
                 <!-- Mobile menu start -->
                <div class="mobile-menu-area hidden-lg hidden-md">
                    <div class="container">
                        <div class="col-md-12">
                            <nav id="dropdown">
                            <ul>
                                <li><a href="index.html">home</a></li>
                                <li><a href="about-us.html">About</a></li>
                                <li><a href="gallery.html">Gallery</a></li>
                                <li><a href="#">pages</a>
                                    <ul>
                                        <li><a href="404.html">404</a></li>
                                        <li><a href="booking-information.html">Booking Information</a></li>
                                        <li><a href="personal-information.html">Personal Information</a></li>
                                        <li><a href="payment-information.html">Parment Information</a></li>
                                        <li><a href="booking-done.html">Booking Done</a></li>
                                        <li><a href="room-booking.html">Room booking</a></li>
                                        <li><a href="news.html">News</a></li>
                                        <li><a href="gallery.html">Gallery</a></li>
                                        <li><a href="staff.html">Staff</a></li>
                                        <li><a href="our-room.html">Room</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact-us.html">contact</a></li>
                            </ul>
                        </nav>
                        </div>
                    </div>
                </div>
                <!-- Mobile menu end -->
            </div>
            <!--Welcome secton-->
            <div class="welcome-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-5">
                            
                            <div class="booking-box">
                                <div class="booking-title">
                                    <h3>Book A Room</h3>
                                    <p>There are many vars of passageson't look even slightly believable.</p>
                                </div>
                                <div class="booking-form">
                                    <form method="post" action="<c:url value="/search?typeroom=${typeroom}"/>">
                                        <div class="b-date arrive mb-15">
                                            <input id="check-in" class="date-picker" type="text" placeholder="Arrive Date" name="arrival">
                                            <i class="mdi mdi-calendar-text"></i>
                                        </div>
                                        <div class="b-date departure mb-15">
                                                <input id="check-out" class="date-picker" type="text" placeholder="Departure Date" name="depature">
                                            <i class="mdi mdi-calendar-text"></i>
                                        </div>
                                        <div class="select-book  mb-30">
                                            <select name="typeroomid" class="select-booking">
                                                <c:forEach var="roomtypes" items="${roomtypes}">
                                                    <option value="${roomtypes.roomtypeid}" selected>${roomtypes.typename}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="submit-form">
                                            <button type="submit">Check Availability</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        </form>
                        <div class="col-md-8 col-sm-7">
                            <div class="welcome-text">
                                <h2>
                                <span>WELCOEM TO</span> <span class="coloring">Chondo</span>
                                </h2>
                                <h1 class="cd-headline clip">
                                    <span>THE PERFECT</span>
                                    <span class="cd-words-wrapper coloring">
                                        <b class="is-visible"> LOCATION</b>
                                        <b>Room</b>
                                        <b>places</b>
                                    </span>
                                </h1>
                                <p class="welcome-desc">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                                <div class="explore">
                                    <a href="#">EXPLORE IT</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header section end -->
        <!-- searchbar Start -->
            <div class="search-bar animated slideOutUp">
                <div class="table">
                    <div class="table-cell">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <div class="search-form-wrap">
                                        <button class="close-search"><i class="mdi mdi-close"></i></button>
                                        <form action="#">
                                            <input type="text" placeholder="Search here..." value="Search here..."/>
                                            <button class="search-button" type="submit">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- search bar End -->
        <!--About Section Title start-->
        <div class="about-section text-center ptb-80 white_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title mb-80">
                            <h2>About <span>Chondo</span></h2>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered by injected humour.</p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="about-chondo">
                            <div class="about-member">
                                <img src="images/about.jpg" alt="">
                                <h3>Mohin patwary</h3>
                                <h5 class="mb-0">hrd head</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--About Section end-->
        <!--Our Room start-->
        <div class="our-room text-center ptb-80 white-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title mb-75">
                            <h2>our <span>Room</span></h2>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered by injected humour.</p>
                        </div>
                    </div>
                </div>
                <div class="our-room-show">
                    <div class="row">
                        <div class="carousel-list">
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room1.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room2.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room3.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room1.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room2.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room3.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room1.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room2.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-room">
                                    <div class="room-img">
                                        <a href="#"><img src="images/room/room3.jpg" alt=""></a>
                                    </div>
                                    <div class="room-desc">
                                        <div class="room-name">
                                            <h3><a href="#">Delux room</a></h3>
                                        </div>
                                        <div class="room-rent">
                                            <h5>€ 200 / <span>Night</span></h5>
                                        </div>
                                        <div class="room-book">
                                            <a href="#">Book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Our room end-->
        <!--Our services start-->
        <div class="our-sevices text-center ptb-80 white_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title mb-80">
                            <h2>our <span>services</span></h2>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered by injected humour.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="our-services-list">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="single-services">
                                <div class="services-img">
                                    <img src="images/services/services1.jpg" alt="">
                                    <div class="services-title">
                                        <h2>Breakfast & Buffet</h2>
                                    </div>
                                    <div class="services-hover-desc">
                                        <div class="services-hover-inner">
                                            <div class="services-hover-table">
                                                <div class="services-hover-table-cell">
                                                    <h2>Breakfast & Buffet</h2>
                                                    <p>There are many variations of passages Loem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="single-services">
                                <div class="services-img">
                                    <img src="images/services/services2.jpg" alt="">
                                    <div class="services-title">
                                        <h2>Towels and bedding</h2>
                                    </div>
                                    <div class="services-hover-desc">
                                        <div class="services-hover-inner">
                                            <div class="services-hover-table">
                                                <div class="services-hover-table-cell">
                                                    <h2>Breakfast & Buffet</h2>
                                                    <p>There are many variations of passages Loem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="single-services">
                                <div class="services-img">
                                    <img src="images/services/services3.jpg" alt="">
                                    <div class="services-title">
                                        <h2>24/7 Reception</h2>
                                    </div>
                                    <div class="services-hover-desc">
                                        <div class="services-hover-inner">
                                            <div class="services-hover-table">
                                                <div class="services-hover-table-cell">
                                                    <h2>24/7 Reception</h2>
                                                    <p>There are many variations of passages Loem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="single-services">
                                <div class="services-img">
                                    <img src="images/services/services4.jpg" alt="">
                                    <div class="services-title">
                                        <h2>City Tours</h2>
                                    </div>
                                    <div class="services-hover-desc">
                                        <div class="services-hover-inner">
                                            <div class="services-hover-table">
                                                <div class="services-hover-table-cell">
                                                    <h2>City Tourst</h2>
                                                    <p>There are many variations of passages Loem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
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
        </div>
        <!--Our services end-->
        <!--Our staff start-->
        <div class="our-staff text-center pb-80 white_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title mb-80">
                            <h2>our <span>Staff</span></h2>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered by injected humour.</p>
                        </div>
                    </div>
                </div>
                <div class="staff-list">
                    <div class="row">
                        <div class="carousel-list">
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff1.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff2.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff3.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff1.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff2.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff3.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff1.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff2.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-staff">
                                    <div class="sraff-inner">
                                        <img src="images/staff/staff3.jpg" alt="">
                                        <div class="staff-title">
                                            <span class="plus"></span>
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>

                                        </div>
                                        <div class="staff-hover-desc">
                                            <h2>Soleman</h2>
                                            <h5>hotel staff</h5>
                                            <p>There are many variaons of passa of Lorem Ipsuable, amrn in sofby injected humour, amr.</p>
                                            <div class="scoial_icons">
                                                <a href="#"><i class="mdi mdi-facebook"></i></a>
                                                <a href="#"><i class="mdi mdi-rss"></i></a>
                                                <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                                <a href="#"><i class="mdi mdi-instagram"></i></a>
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
        <!--Our staff end-->
        <!--Testimonial start-->
        <div class="staff-tesimonial text-center white_bg">
            <div class="testimonail-bg-opacity"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="testimonial-list">
                            <div class="single-testimonial">
                                <h2>Louis Smith</h2>
                               <p>There are many variations of passages of Lorem I available, but the majority have suffered alteration in som, d humour, or randomised words which
    </p>
                            </div>
                            <div class="single-testimonial">
                                <h2>Louis Smith</h2>
                               <p>There are many variations of passages of Lorem I available, but the majority have suffered alteration in som, d humour, or randomised words which
    </p>
                            </div>
                            <div class="single-testimonial">
                                <h2>Louis Smith</h2>
                               <p>There are many variations of passages of Lorem I available, but the majority have suffered alteration in som, d humour, or randomised words which
    </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <!--Testimonial end-->
        <!--Our gallery start-->
        <div class="our-gallery text-center ptb-80 white_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title mb-80">
                            <h2>our <span>Gallery</span></h2>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered by injected humour.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="our-gallery-photo">
                <div class="single-gallery">
                    <img src="images/gallery/g-1.jpg" alt="">
                </div>
                <div class="single-gallery">
                    <img src="images/gallery/g-2.jpg" alt="">
                </div>
                <div class="single-gallery">
                    <img src="images/gallery/g-5.jpg" alt="">
                </div>
                <div class="single-gallery">
                    <img src="images/gallery/g-4.jpg" alt="">
                </div>
                <div class="single-gallery">
                    <img src="images/gallery/g-5.jpg" alt="">
                </div>
            </div>
        </div>
        <!--Our gallery end-->
        <!--Our news start-->
        <div class="our-news text-center white_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title mb-80">
                            <h2>our <span>News</span></h2>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered by injected humour.</p>
                        </div>
                    </div>
                </div>
                <div class="news-list">
                    <div class="row">
                        <div class="col-md-12 pb-80">
                            <div class="news-inner">
                                <div class="news-img">
                                    <img src="images/news/n-1.jpg" alt="">
                                    <div class="news-post">
                                        <div class="n-date">15 June 2015</div>
                                        <a href="#" class="comment"><span><i class="mdi mdi-comment-processing-outline"></i></span> 20</a>
                                        <div class="news-views">
                                            <a href="#"><span><i class="mdi mdi-heart"></i></span>40</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="news-desc">
                                    <h3 class="news-title"><a href="#">Best Things to Do In London Enjoy Your life
    the Night life.</a> </h3>
                                    <p class="news_desc">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of tystem, and expound the actual teachings of the great explorer of the truth, the master-builder uman happiness. No one rejects, dislikes, or avoids pleasure itself, because it</p>
                                    <div class="news-action">
                                        <div class="read-more">
                                            <a href="#">Read more</a>
                                        </div>
                                        <div class="news-share">
                                            <p>Share:</p>
                                            <a href="#"><i class="mdi mdi-facebook"></i></a>
                                            <a href="#"><i class="mdi mdi-rss"></i></a>
                                            <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                            <a href="#"><i class="mdi mdi-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 pb-80">
                            <div class="news-inner">
                                <div class="news-img">
                                    <img src="images/news/n-2.jpg" alt="">
                                    <div class="news-post">
                                        <div class="n-date">15 June 2015</div>
                                        <a href="#" class="comment"><span><i class="mdi mdi-comment-processing-outline"></i></span> 20</a>
                                        <div class="news-views">
                                            <a href="#"><span><i class="mdi mdi-heart"></i></span>40</a>
                                        </div>

                                    </div>
                                </div>
                                <div class="news-desc">
                                    <h3 class="news-title"><a href="#">Best Things to Do In London Enjoy Your life
    the Night life. </a></h3>
                                    <p class="news_desc">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of tystem, and expound the actual teachings of the great explorer of the truth, the master-builder uman happiness. No one rejects, dislikes, or avoids pleasure itself, because it</p>
                                    <div class="news-action">
                                        <div class="read-more">
                                            <a href="#">Read more</a>
                                        </div>
                                        <div class="news-share">
                                            <p>Share:</p>
                                            <a href="#"><i class="mdi mdi-facebook"></i></a>
                                            <a href="#"><i class="mdi mdi-rss"></i></a>
                                            <a href="#"><i class="mdi mdi-google-plus"></i></a>
                                            <a href="#"><i class="mdi mdi-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--Our news end-->
        <!--Hotel communities start-->
        <div class="hotel-cmmunities ptb-100 text-center">
            <div class="community-bg-opacity"></div>
            <div class="container">
                <div class="row">
                    <div class="communities-list">
                        <div class="single-commmunites">
                            <h1 class="counter">500</h1>
                            <h2>Customer</h2>
                        </div>
                        <div class="single-commmunites">
                            <h1 class="counter">200</h1>
                            <h2>clecbrities</h2>
                        </div>
                        <div class="single-commmunites">
                            <h1 class="counter">850</h1>
                            <h2>return</h2>
                        </div>
                        <div class="single-commmunites hidden-xs">
                            <h1 class="counter">1250</h1>
                            <h2>Happy people</h2>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--Hotel communities end-->
        <!--hotel team start-->
        <div class="hotel-team pt-100 white_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="team-brand pb-100">
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-1.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-4.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-3.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-4.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-5.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-1.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-4.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-3.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-4.jpg" alt=""></a>
                            </div>
                            <div class="single-team">
                                <a href="#"><img src="images/brand/b-5.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="newsletter">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="newsletter-title">
                                        <h2>SUBSCRIBE TO OUR NEWSLETTER</h2>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="newsletter-form">
                                        <form id="mc-form" class="mc-form" >
											<input id="mc-email" type="email" autocomplete="off" placeholder="Enter Address..." />
											<button id="mc-submit" type="submit">Subscribe</button>
										</form>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--hotel team end-->
        <!--Footer start -->
        <div class="footer ptb-100">
            <div class="footer-bg-opacity"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-6">
                        <div class="single-footer mt-0">
                            <div class="logo">
                                <img src="images/logo/logo.png" alt="">
                            </div>
                            <div class="f-adress">
                                <p><span>Address:</span> ur address goes here,
    street Crossroad123.</p>
                            </div>
                            <div class="hotel-contact">
                                <p><span>phone:</span> 99 55 88586 5478.</p>
                                <p><span>Email:</span>info@example.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 hidden-sm col-xs-6">
                        <div class="single-footer">
                           <h3>Quick Links</h3>
                           <div class="quick-item">
                                <ul>
                                   <li><a href="#">Rooms</a></li>
                                   <li><a href="#">Food & Drinks</a></li>
                                   <li><a href="#">Manifesto</a></li>
                                   <li><a href="#">Beach Venues</a></li>
                                   <li><a href="#">Wellness</a></li>
                                   <li><a href="#">Contact</a></li>
                                </ul>
                           </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 col-xs-6">
                        <div class="single-footer">
                            <h3>Get in touch</h3>
                            <div class="get-touch">
                                <p>There are many varins of passages of Lorem Ipsum available, but</p>
                                <div class="get-conatct">
                                    <form action="#">
                                       <input type="text" value="Your name">
                                       <input type="text" value="Your email">
                                       <button type="submit">Send</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-3 col-sm-4 col-xs-6">
                        <div class="single-footer">
                            <h3>instagram</h3>
                            <div class="instagram-post">
                                <div class="single-post">
                                    <a href="#"><img src="images/instagram/ins-1.jpg" alt=""></a>
                                </div>
                                <div class="single-post">
                                    <a href="#"><img src="images/instagram/ins-2.jpg" alt=""></a>
                                </div>
                                <div class="single-post">
                                    <a href="#"><img src="images/instagram/ins-3.jpg" alt=""></a>
                                </div>
                                <div class="single-post">
                                    <a href="#"><img src="images/instagram/ins-4.jpg" alt=""></a>
                                </div>
                                <div class="single-post">
                                    <a href="#"><img src="images/instagram/ins-5.jpg" alt=""></a>
                                </div>
                                <div class="single-post">
                                    <a href="#"><img src="images/instagram/img-6.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright ptb-20 white_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-8 col-xs-12">
                        <p>Copyright© CHONDO 2018.All right reserved.Created by <a href="https://freethemescloud.com/"> Free themes Cloud</a></p>
                    </div>
                    <div class="col-md-6 col-sm-4 col-xs-12">
                        <div class="footer-menu">
                            <ul>
                                <li><a href="#">Privacy policy</a></li>
                                <li><a href="#">Term of use</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer end -->
    </div>
    
    



  <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="<c:url value="/resources/js/vendor/jquery-1.12.0.min.js" />"></script>
    <!-- Bootstrap framework js -->
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <!--counter up js-->
    <script src="<c:url value="/resources/js/waypoints.min.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.counterup.min.js" />"></script>
    <!-- Video player js -->
    <script src="<c:url value="/resources/js/video-player.js" />"></script>
    <!-- headlines js -->
    <script src="<c:url value="/resources/js/animated-headlines.js" />"></script>
    <!-- Ajax mail js -->
    <script src="<c:url value="/resources/js/mailchimp.js" />"></script>
    <!-- Ajax mail js -->
    <script src="<c:url value="/resources/js/ajax-mail.js" />"></script>
    <script src="<c:url value="/resources/js/parallax.js" />"></script>
    <script src="<c:url value="/resources/js/textilate.js" />"></script>
    <script src="<c:url value="/resources/js/lettering.js" />"></script>
    <script src="<c:url value="/resources/js/isotope.pkgd.min.js" />"></script>
    <script src="<c:url value="/resources/js/packery-mode.pkgd.min.js" />"></script>
    <!-- Style Customizer Js  -->
    <script src="<c:url value="/resources/js/style-customizer.js" />"></script>
    <!-- Owl carousel Js -->
    <script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
    <!--Magnificant js-->
    <script src="<c:url value="/resources/js/jquery.magnific-popup.js" />"></script>
    <!-- All js plugins included in this file. -->
    <script src="<c:url value="/resources/js/plugins.js" />"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="<c:url value="/resources/js/main.js" />"></script>
    

</body>

</html>