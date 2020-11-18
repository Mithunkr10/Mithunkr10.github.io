<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html  >
<head>
  <!-- Timeline Page -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="/views/assets/images/logo2.png" type="image/x-icon">
  <meta name="description" content=" my Travel Timeline website.">
  
  
  <title>Travel Timeline</title>
  <link rel="stylesheet" href="/views/assets/web/assets/icons/icons.css">
  <link rel="stylesheet" href="/views/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/views/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="/views/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="/views/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="/views/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="/views/assets/tether/tether.min.css">
  <link rel="stylesheet" href="/views/assets/theme/css/style.css">
  <link rel="stylesheet" href="/views/assets/gallery/style.css">
  <link rel="preload" as="style" href="/views/assets/CSS/css/mbr-additional.css">
  <link rel="stylesheet" href="/views/assets/CSS/css/mbr-additional.css" type="text/css">
  
  <script>
  function AddNew() 
  {
  $("#table1-0").toggle();
  }
  function showTable(){
	  document.getElementById('table1-0').style.visibility = "visible";
	  AddNew();
	  }
  function hideTable(){
	 // document.getElementById('table1-0').style.visibility = "collapse";
		 AddNew();
	  }
  </script>
  
</head>
<body onload="javascript:hideTable()">
  <section class="menu cid-sa0VjVewus" id="menu2-0">

    

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
                        <img src="/views/assets/images/logo2.png" alt="Travel" style="height: 3.8rem;">
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
                    <a class="nav-link link text-black display-4" href="/Travel log">
                        Traveled To
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-black display-4" href="/AboutMe">
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


<section class="engine"><a href="/">Mithun Krishna</a></section><section class="header1 cid-sa0Y5PEXCy mbr-parallax-background" id="header1-i">

    

    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(20, 157, 204);">
    </div>

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="mbr-white col-md-10">
                <h1 class="mbr-section-title align-center mbr-bold pb-3 mbr-fonts-style display-1">
         		 ${source } to ${destination}
                </h1>
                <h3 class="mbr-section-subtitle align-center mbr-light pb-3 mbr-fonts-style display-2">
                    Time-line
                </h3>
                <p class="mbr-text align-center pb-3 mbr-fonts-style display-5">
                    The butterfly counts not months but moments, and has time enough.
                </p>
                <div class="mbr-section-btn align-center"><a class="btn btn-md btn-secondary display-4" href="#pricing-tables3-l">
                        <span class="mbr-iconfont mbri-file"></span>Expenditure</a></div>
            </div>
        </div>
    </div>

</section>

<section class="timeline2 cid-sa0YzNaaBv" id="timeline2-m">

    

    

    <div class="container align-center">
        <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">
            Timeline
        </h2>
        <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style display-5">
          ${source} to ${destination}
        </h3>

        <div class="container timelines-container">
			<div class="row timeline-element reverse separline">
                <span class="iconsBackground">
                    <span class="mbri-target mbr-iconfont"></span>
                </span>          
                <div class="col-xs-12 col-md-6 align-left">
                    <div class="timeline-text-content">
                        <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">
                            ${source}
                        </h4>
                        <p class="mbr-timeline-text mbr-fonts-style display-7">
                            
                        </p>
                     </div>
                </div>
            </div>
            <c:set var="num_people" value="${fn:length(timelineList)}" />
          <c:forEach var="tmlnlist" begin="1" end="${num_people-2}" items="${timelineList}">
			
            <!--1-->
            
            <div class="row timeline-element separline">
                <span class="iconsBackground">
                    <span class="mbri-map-pin mbr-iconfont"></span>
                </span>          
                <div class="col-xs-12 col-md-6 align-left">
                    <div class="timeline-text-content">
                        <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5 ">
                            ${tmlnlist}
                        </h4>
                        <p class="mbr-timeline-text mbr-fonts-style display-7">
 
                        </p>
                     </div>
                </div>
            </div>
              </c:forEach>    
              <div class="row timeline-element reverse separline">
                <span class="iconsBackground">
                    <span class="mbri-target mbr-iconfont"></span>
                </span>          
                <div class="col-xs-12 col-md-6 align-left">
                    <div class="timeline-text-content">
                        <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">
                            ${destination}
                        </h4>
                        <p class="mbr-timeline-text mbr-fonts-style display-7">
                           ${description}
                        </p>
                     </div>
                </div>
            </div>     
        </div>
    </div>
</section>
<!-- 
<section class="map2 cid-sa0YJIGNbK" id="map2-n">

    

    <div class="container">
        <div class="media-container-row">
            <div class="col-md-8">
                <div class="google-map"><iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d31107.706746169715!2d77.54918681823713!3d12.942176016001842!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x3bae1670c9b44e6d%3A0xf8dfc3e8517e4fe0!2sBengaluru%2C%20Karnataka!3m2!1d12.9715987!2d77.5945627!4m5!1s0x3bae3f7c0a74dcf7%3A0xe0997cca85451809!2sUdpi%2C%20Kengeri%20Rd%2C%20Uttarahalli%20Hobli%2C%20Bengaluru%2C%20Karnataka%20560061!3m2!1d12.9123459!2d77.5396974!5e0!3m2!1sen!2sin!4v1599792235190!5m2!1sen!2sin" width="600" height="450" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>
        </div>
    </div>
</div></section>
 -->
<section class="pricing-table3 cid-sa0YqGREOa" id="pricing-tables3-l">

    

    
    <div class="container">
        <div class="media-container-row">
            <div class="col-12 col-lg-4 col-md-6 my-2">
                <div class="pricing">
                    <div class="plan-header">
                        <div class="plan-price">
                            <span class="price-value mbr-fonts-style display-5">
                                Rs
                            </span>
                            <span class="price-figure mbr-fonts-style display-5">
                                ${food}
                            </span>
                            <h3 class="plan-title mbr-fonts-style display-5">
                                Food
                            </h3>
                            <hr>
                        </div>
                    </div>
                    <div class="plan-body">
                        <p class="mbr-text mbr-fonts-style display-7">
                            *Can vary depending upon your choices
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-4 col-md-6 my-2">
                <div class="pricing">
                    <div class="plan-header">
                        <div class="plan-price">
                            <span class="price-value mbr-fonts-style display-5">
                                Rs
                            </span>
                            <span class="price-figure mbr-fonts-style display-5">
                                ${stay}
                            </span>
                            <h3 class="plan-title mbr-fonts-style display-5">
                                Stay
                            </h3>
                            <hr>
                        </div>
                    </div>
                    <div class="plan-body">
                        <p class="mbr-text mbr-fonts-style display-7">
                            *Can vary depending upon your choices
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-4 col-md-6 my-2">
                <div class="pricing">
                    <div class="plan-header">
                        <div class="plan-price">
                            <span class="price-value mbr-fonts-style display-5">
                                Rs
                            </span>
                            <span class="price-figure mbr-fonts-style display-5">
                                ${miscl}
                            </span>
                            <h3 class="plan-title mbr-fonts-style display-5">
                                Miscellaneous
                            </h3>
                            <hr>
                        </div>
                    </div>
                    <div class="plan-body ">
                        <p class="mbr-text mbr-fonts-style display-7">
                            *Can vary depending upon your choices
                        </p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mbr-section-btn pt-4 text-center">
                            <button onclick='javascript:showTable();' class="btn btn-primary display-4">Total Expenditure Split-Up</button>
                        </div>
</section>

<section class="section-table cid-saczUVJVcl" id="table1-0" data-bg-video="http://www.youtube.com/watch?v=uNCr7NdOJgw">

  <br>
  <div class="mbr-overlay" style="opacity: 0.3; background-color: rgb(239, 239, 239);">
  </div>
  <div class="container container-table">
      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2">Expenses Split-Up</h2>
      <h3 class="mbr-section-subtitle mbr-fonts-style align-center pb-5 mbr-light display-5">
            Expenditure Split-up for the trip from ${source} to ${destination}
      </h3>

        <div class="container scroll">
          <table class="table isSearch" data-empty="No matching records found">
            <thead>
              <tr class="table-heads ">
                  
                  
                  
                  
              <th class="head-item mbr-fonts-style display-7">
                      FOOD*</th><th class="head-item mbr-fonts-style display-7">
                      STAY*</th><th class="head-item mbr-fonts-style display-7">
                      FUEL*</th><th class="head-item mbr-fonts-style display-7">
                      MISCELLANEOUS*</th><th class="head-item mbr-fonts-style display-7">
                      TOTAL EXPENDITURE</th></tr>
            </thead>
            <tbody> 
            <tr> 
              
              <td class="body-item mbr-fonts-style display-7">${food}</td>
              <td class="body-item mbr-fonts-style display-7">${stay}</td>
              <td class="body-item mbr-fonts-style display-7">${fuel_tot}</td>
              <td class="body-item mbr-fonts-style display-7">${miscl}</td>
              <td class="body-item mbr-fonts-style display-7">${total_expns}</td>
              
             </tr>  
             </tbody>             
          </table>
        </div>
        <div class="container table-info-container">
          <div class="row info">
            <div class="col-md-6">
              <div class="dataTables_info mbr-fonts-style display-7">
                <span class="infoBefore">*Can</span>
                <span class="inactive infoRows"></span>
                <span class="infoAfter">vary depending</span>
                <span class="infoFilteredAfter"> on your choices</span>
              </div>
            </div>
            <div class="col-md-6"></div>
          </div>
        </div>
      </div>
          
    <br>
</section>

<section class="mbr-gallery mbr-slider-carousel cid-sa0W1ZPbur" id="gallery2-8">

    

    <div class="container">
        <div><!-- Filter -->
        <div class="mbr-gallery-filter container gallery-filter-active">
        <ul>
        	<li class="mbr-gallery-filter-all ">
        	<!--  -->	<a class="btn btn-md display-7" href=""></a>  
        	</li>
        </ul>
        </div><!-- Gallery -->
          <div class="mbr-gallery-row">
        <div class="mbr-gallery-layout-default">
        	<div>
        		<div>
        		<% int count=0; %>
        		<c:forEach var="doc" items="${docs}">
        		<% count++; %>
        			<div class="mbr-gallery-item mbr-gallery-item--p2" data-video-url="false" data-tags="GALLERY">
        				<div href="#lb-gallery2-8" data-slide-to="0" data-toggle="modal">
        					<img src="/getStudentPhotoAll/<c:out value='${tid}'/>/<c:out value='${doc}'/>" alt="${destination }" />
        						<span class="icon-focus"></span>
        				</div>
        			</div>
        			<%
        			if(count==8)
        				break;
        			%>
        			</c:forEach>
        		</div>
        	</div>
        	<div class="clearfix">
        	</div>
        </div>
     </div>
        	    
        		<!-- Lightbox 
        		<div data-app-prevent-settings="" class="mbr-slider modal fade carousel slide" tabindex="-1" data-keyboard="true" data-interval="false" id="lb-gallery4-k">
        			<div class="modal-dialog">
        				<div class="modal-content">
        					<div class="modal-body">
        						<div class="carousel-inner">
        							<div class="carousel-item active">
        								<img src="/views/assets/images/background1.jpg" alt="" title="">
        							</div>
        						<div class="carousel-item">
        							<img src="/views/assets/images/background2.jpg" alt="" title="">
        						</div>
        						<div class="carousel-item">
        							<img src="/views/assets/images/background3.jpg" alt="" title="">
        						</div>
        						<div class="carousel-item">
        							<img src="/views/assets/images/background4.jpg" alt="" title="">
        						</div>
        						<div class="carousel-item">
        							<img src="/views/assets/images/background5.jpg" alt="" title="">
        						</div>
        						<div class="carousel-item">
        							<img src="/views/assets/images/background6.jpg" alt="" title="">
        						</div>
        						<div class="carousel-item">
        							<img src="/views/assets/images/background7.jpg" alt="" title="">
        						</div>
        						<div class="carousel-item">
        							<img src="/views/assets/images/background8.jpg" alt="" title="">
        						</div>
        					</div>
        					<a class="carousel-control carousel-control-prev" role="button" data-slide="prev" href="#lb-gallery4-k">
        						<span class="mbri-left mbr-iconfont" aria-hidden="true"></span>
        						<span class="sr-only">Previous</span>
        					</a>
        					<a class="carousel-control carousel-control-next" role="button" data-slide="next" href="#lb-gallery4-k">
        						<span class="mbri-right mbr-iconfont" aria-hidden="true"></span>
        						<span class="sr-only">Next</span>
        					</a>
        					<a class="close" href="#" role="button" data-dismiss="modal">
        						<span class="sr-only">Close</span>
        					</a>
        				</div>
        			</div>
        		</div>
        	</div>  -->
        </div>
    </div>

</section>
<section class="counters2 counters cid-sa0YaekjIl" id="counters2-j">


    <div class="container pt-4 mt-2">
        <div class="media-container-row">
            <div class="media-block" style="width: 49%;">
                <h2 class="mbr-section-title pb-3 align-left mbr-fonts-style display-2">
                    Travel 
                </h2>
                <h3 class="mbr-section-subtitle pb-5 align-left mbr-fonts-style display-5">
                    ${source } to ${destination }
                </h3>

            </div>
            <div class="cards-block">
                <div class="cards-container">
                    <div class="card px-3 align-left col-12 col-md-6">
                        <div class="panel-item p-3">
                            <div class="card-img pb-3">
                                <span class="mbri-timer mbr-iconfont pr-2"></span>
                                <h4 class="count pt-3 pb-3 mbr-fonts-style display-5">
                                    ${dist_cov} km
                                </h4>
                            </div>
                            <div class="card-text">
                                <h4 class="mbr-content-title mbr-bold mbr-fonts-style display-7">
                                    Distance Covered**
                                </h4>
                            </div>
                        </div>
                    </div>
                    <div class="card px-3 align-left col-12 col-md-6">
                        <div class="panel-item p-3">
                            <div class="card-img pb-3">
                                <span class="mbri-extension mbr-iconfont pr-2"></span>
                                <h4 class="count pt-3 pb-3 mbr-fonts-style display-5">
                                    ${fuel_used} ltrs
                                </h4>
                            </div>
                            <div class="card-text">
                                <h4 class="mbr-content-title mbr-bold mbr-fonts-style display-7">
                                    Fuel**
                                </h4>
                            </div>
                        </div>
                    </div>
                    <div class="card px-3 align-left col-12 col-md-6">
                        <div class="panel-item p-3">
                            <div class="card-img pb-3">
                                <span class="mbri-cash mbr-iconfont pr-2"></span>
                                <h4 class="count pt-3 pb-3 mbr-fonts-style display-5">
                                    Rs ${total_expns }
                                </h4>
                            </div>
                            <div class="card-text">
                                <h4 class="mbr-content-title mbr-bold mbr-fonts-style display-7">
                                    Total Expenditure**
                                </h4>
                            </div>
                        </div>
                    </div>
                    <div class="card px-3 align-left col-12 col-md-6">
                        <div class="panel-item p-3">
                            <div class="card-img pb-3">
                                <span class="mbri-clock mbr-iconfont pr-2"></span>
                                <h4 class="count pt-3 pb-3 mbr-fonts-style display-5">
                                    ${total_time } hrs
                                </h4>
                            </div>
                            <div class="card-texts">
                                <h4 class="mbr-content-title mbr-bold mbr-fonts-style display-7">
                                    Total Time**
                                </h4>
                            </div>
                        </div>
                    </div>
                    <h7>** All the numbers mentioned are for Trip from ${source} to ${destination} and back to ${source}</h7>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="cid-sa0XKGGrHw" id="footer5-g">

    

    

    <div class="container">
        <div class="media-container-row">
            <div class="col-md-3">
                <div class="media-wrap">
                    <a href="/">
                       <img src="/views/assets/images/logo2.png" alt="Travel Diary">
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


  <script src="/views/assets/web/assets/jquery/jquery.min.js"></script>
  <script src="/views/assets/popper/popper.min.js"></script>
  <script src="/views/assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="/views/assets/smoothscroll/smooth-scroll.js"></script>
  <script src="/views/assets/dropdown/js/nav-dropdown.js"></script>
  <script src="/views/assets/dropdown/js/navbar-dropdown.js"></script>
  <script src="/views/assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="/views/assets/tether/tether.min.js"></script>
  <script src="/views/assets/masonry/masonry.pkgd.min.js"></script>
  <script src="/views/assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="/views/assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
  <script src="/views/assets/viewportchecker/jquery.viewportchecker.js"></script>
  <script src="/views/assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
  <script src="/views/assets/parallax/jarallax.min.js"></script>
  <script src="/views/assets/theme/js/script.js"></script>
  <script src="/views/assets/slidervideo/script.js"></script>
  <script src="/views/assets/gallery/player.min.js"></script>
  <script src="/views/assets/gallery/script.js"></script>
  
  
</body>
</html>