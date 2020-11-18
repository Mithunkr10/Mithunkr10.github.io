<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mithun.bean.Trip"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%-- Keep a reference to the size of the collection --%>
<c:set var="num_people" value="${fn:length(list)}" />
<!DOCTYPE html>
<html  >
<head>
  <!-- All the Travel Destinations -->
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="views/assets/images/logo2.png" type="image/x-icon">
  <meta name="description" content="My Travel Destinations log website.">  
  
  <title>Travel Log</title>

  <link rel="stylesheet" href="views/assets/datatables/data-tables.bootstrap4.min.css">
  <link rel="stylesheet" href="views/assets/web/assets/icons/icons.css">
  <link rel="stylesheet" href="views/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="views/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="views/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="views/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="views/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="views/assets/tether/tether.min.css">
  <link rel="stylesheet" href="views/assets/theme/css/style.css">
  <link rel="stylesheet" href="views/assets/gallery/style.css">
  <link rel="stylesheet" href="css/unibox.min.css"/>
  <link rel="preload" as="style" href="views/assets/CSS/css/mbr-additional.css">
  <link rel="stylesheet" href="views/assets/CSS/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
  <section class="menu cid-sa0VjVewus" once="menu" id="menu2-0">

    

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="/">
                        <img src="views/assets/images/logo2.png" alt="Travel" style="height: 3.8rem;">
                    </a>
                </span>
                
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                <li class="nav-item">
                    <a class="nav-link link text-black display-4" href="/">
                        Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-black display-4" href="Travel log">
                        Traveled To
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-black display-4" href="AboutMe">
                        About Me
                    </a>
                </li>
            </ul>
            <div class="navbar-buttons mbr-section-btn">
                <a class="btn btn-sm btn-primary display-4" href="https://www.youtube.com/channel/UCQY279iOMrQ0d4RfgablRrw">
                    <span class="btn-icon mbri-video mbr-iconfont mbr-iconfont-btn">
                    </span>
                    Youtube Channel
                </a>
            </div>
        </div>
    </nav>
</section>

<section class="engine"><a href="/">Mithun Krishna</a></section>
<section class="mbr-section article content9 cid-sa0WD5IEUE" id="content9-a">
    
     
<br>
<br>
<br>
    <div class="container">
        <div class="inner-container" style="width: 100%;">
            <hr class="line" style="width: 25%;">
            <div class="section-text align-center mbr-fonts-style display-5">
            "Twenty years from now you will be more disappointed by the things you didn't do than by the ones you did do. So throw off the bowlines. Catch the trade winds in your sails. Explore. Dream. Discover."
                </div>
            <hr class="line" style="width: 25%;">
        </div>
        </div>
</section>

<section class="features3 cid-sa0WIiQnUS" id="features3-b">

   <div class="container">
        <div class="inner-container" style="width: 100%;">
        <div class="section-text align-center mbr-fonts-style display-5">
			RECENT TRIPS
                </div>
			</div>
        </div>    
    <div class="container">
        <div class="media-container-row">
          <% int count=0;
			%>
          <c:forEach var="tripd" items="${travel}">
			<% count++; %>
			
            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="/getTravelPhoto/<c:out value='${tripd.getTrip_id()}'/>" alt="${Travel.Trip_id }">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-7">
                            ${tripd.getTrip_source() } to ${tripd.getTrip_destination() }
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                          ${tripd.getDescription() }
                        </p>
                    </div>
                    
                </div>
            <section>
            <div class="mbr-section-btn text-center">
                        <a href="Timeline/${tripd.getTrip_source() }/${tripd.getTrip_destination() }" class="btn btn-primary display-4">
                            Travel Story
                        </a>
                    </div>
              </section>
                    </div>
              <%
              if(count==3)
            	  break;
            	%>
			</c:forEach>      
        </div>
    </div>
</section>

<hr>
<section class="services4 cid-sa0XktgdIr" id="services4-e">
    <!---->
    
    <!---->
    <!--Overlay-->
    
    <!--Container-->
    
    <div class="container">
        <div class="row">
            <!--Card-1-->
            <c:forEach var="tripd" items="${travel}">
            <div class="card p-3 col-12">
                <div class="card-wrapper media-container-row media-container-row">
                    <div class="card-box">
                        <div class="row">
                            <div class="col-12 col-md-12 col-lg-4">
                                <div class="wrapper">
                                    <!--Image-->
                                    <div class="mbr-figure" style="width: 100%;">
                                        <img src="/getTravelPhoto/<c:out value='${tripd.getTrip_id()}'/>" alt="${Travel.Trip_id } ">
                                    </div>
                                </div>
                            </div>
                             
                            <div class="col-12 col-md-7 col-lg-4">
                                <div class="wrapper col-left">
                                    <!--Title-->
                                    <h4 class="card-title mbr-fonts-style display-5">
                                        ${tripd.getTrip_destination() }
                                    </h4>
                                    <!--Subtitle-->
                                    <p class="mbr-text mbr-fonts-style pt-3 display-7">
                                        ${tripd.getDescription() }
                                    </p>
                                </div>
                            </div>
                            
                           <div class="col-12 col-md-5 col-lg-4">
                                <div class="wrapper border_wrapper">
                                    <!--Cost -->
                                    <p class="mbr-text mbr-fonts-style col-right mbr-black align-center display-5">
                                       ${tripd.getTrip_start_date() } to ${tripd.getTrip_end_date() }
                                    </p>
                                    <!--Btn -->
                                    <div class="mbr-section-btn col-right align-center">
                                        <a href="Timeline/${tripd.getTrip_source() }/${tripd.getTrip_destination() }" class="btn btn-warning-outline m-0 display-4">
                                           ${tripd.getTrip_source()} to ${tripd.getTrip_destination() } <br>Travel Story
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
                                    
                          
            </c:forEach>
            
        </div>
    </div>
</section>

<section class="cid-sa0XKGGrHw" id="footer5-g">

    

    

    <div class="container">
        <div class="media-container-row">
            <div class="col-md-3">
                <div class="media-wrap">
                    <a href="/">
                       <img src="views/assets/images/logo2.png" alt="Travel Diary">
                    </a>
                </div>
            </div>

        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-md-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-md-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2020 - All Rights Reserved
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="social-list align-right">
                        <div class="soc-item">
                            <a href="https://twitter.com/Mithunkr_" target="_blank">
                                <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.facebook.com/krishna.mithun10" target="_blank">
                                <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.youtube.com/channel/UCQY279iOMrQ0d4RfgablRrw/featured" target="_blank">
                                <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://instagram.com/mithunkr__" target="_blank">
                                <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.linkedin.com/in/mithunkr14/" target="_blank">
                                <span class="socicon-linkedin socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

  <section class="engine"><a href="/">Mithun Krishna</a></section>
  <script src="assets/datatables/jquery.data-tables.min.js"></script>
  <script src="assets/datatables/data-tables.bootstrap4.min.js"></script>
  <script src="assets/ytplayer/jquery.mb.ytplayer.min.js"></script>
  <script src="assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="views/assets/web/assets/jquery/jquery.min.js"></script>
  <script src="views/assets/popper/popper.min.js"></script>
  <script src="views/assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="views/assets/tether/tether.min.js"></script>
  <script src="views/assets/smoothscroll/smooth-scroll.js"></script>
  <script src="views/assets/dropdown/js/nav-dropdown.js"></script>
  <script src="views/assets/dropdown/js/navbar-dropdown.js"></script>
  <script src="views/assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="views/assets/theme/js/script.js"></script>
  
  
  
</body>
</html>