<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Eco-Car Station</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">

  </head>
  <style>
	body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
	.w3-quarter img{margin-bottom: -6px; cursor: pointer}
	.w3-quarter img:hover{opacity: 0.6; transition: 0.3s}
  </style>
  <body>
    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle">
      <i class="fa fa-bars"></i>
    </a>
    <nav id="sidebar-wrapper">
      <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle">
          <i class="fa fa-times"></i>
        </a>
        <li class="sidebar-brand">
          <a class="js-scroll-trigger" href="#login">로그인</a>
        </li>
        <li class="sidebar-brand">
          <a class="js-scroll-trigger" href="#login">회원가입</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#top">메인화면</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#about">충전소정보</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#services">이슈보기</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#portfolio">전기자동차</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#contact" onclick=$( "#menu-close").click();>이슈보기</a>
        </li>
      </ul>
    </nav>

    <!-- Header -->
	<%@include file="index/header.jsp"%>
    <!-- About -->
    <%@include file="index/map.jsp"%>
    <!-- Callout -->
    <aside class="callout">
      <div class="text-vertical-center">
        <h1>Vertically Centered Text</h1>
      </div>
    </aside>

    <!-- Portfolio -->
    <section id="imgView" class="portfolio">
      <div class="container" >
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
            <h2>전기자동차</h2>
            <hr class="small">
            <div class="row">
   			 <c:forEach items="" var="data">
              <div class="col-md-4">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="imgCar/${data.img}">
                  </a>
                </div>
              </div>
    		</c:forEach>
<!--               <div class="col-md-4"> -->
<!--                 <div class="portfolio-item"> -->
<!--                   <a href="#"> -->
<!--                     <img class="img-portfolio img-fluid" src="imgCar/2017TeslaModelS.png"> -->
<!--                   </a> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="col-md-4"> -->
<!--                 <div class="portfolio-item"> -->
<!--                   <a href="#"> -->
<!--                     <img class="img-portfolio img-fluid" src="imgCar/2017ToyotaPrius.png"> -->
<!--                   </a> -->
<!--                 </div> -->
<!--               </div> -->
              <div class="w3-bar">
  				<a href="viewcar()" class="w3-button w3-hover-blue w3-large">&laquo;</a>
				<a href="viewcar()" class="w3-button w3-hover-blue w3-large">1</a>
				<a href="viewcar()" class="w3-button w3-hover-blue w3-large">2</a>
				<a href="viewcar()" class="w3-button w3-hover-blue w3-large">3</a>
				<a href="viewcar()" class="w3-button w3-hover-blue w3-large">4</a>
				<a href="viewcar()" class="w3-button w3-hover-blue w3-large">5</a>
				<a href="viewcar()" class="w3-button w3-hover-blue w3-large">&raquo;</a>
			 </div>
<!--               <div class="col-md-4"> -->
<!--                 <div class="portfolio-item"> -->
<!--                   <a href="#"> -->
<!--                     <img class="img-portfolio img-fluid" src="imgCar/2017LexusLC500h.png"> -->
<!--                   </a> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="col-md-6"> -->
<!--                 <div class="portfolio-item"> -->
<!--                   <a href="#"> -->
<!--                     <img class="img-portfolio img-fluid" src="imgCar/2017TeslaModelS.png"> -->
<!--                   </a> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="col-md-6"> -->
<!--                 <div class="portfolio-item"> -->
<!--                   <a href="#"> -->
<!--                     <img class="img-portfolio img-fluid" src="imgCar/2018PorschePanamera.png"> -->
<!--                   </a> -->
<!--                 </div> -->
              </div>
<!--             </div> -->
<!--             /.row (nested) -->
<!--             <a href="#" class="btn btn-dark">View More Items</a> -->
<!--           </div> -->
          <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
    </section>

    <!-- Call to Action -->
    <aside class="call-to-action bg-primary text-white">
      <div class="container text-center">
        <h3>The buttons below are impossible to resist.</h3>
        <a href="#" class="btn btn-lg btn-light">Click Me!</a>
        <a href="#" class="btn btn-lg btn-dark">Look at Me!</a>
      </div>
    </aside>

<!-- Services -->
    <section id="services" class="services bg-primary text-white">
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 mx-auto">
            <h2>Our Services</h2>
            <hr class="small">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="service-item">
                  <span class="fa-stack fa-4x">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-cloud fa-stack-1x text-primary"></i>
                  </span>
                  <h4>
                    <strong>Service Name</strong>
                  </h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                  <a href="#" class="btn btn-light">Learn More</a>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="service-item">
                  <span class="fa-stack fa-4x">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-compass fa-stack-1x text-primary"></i>
                  </span>
                  <h4>
                    <strong>Service Name</strong>
                  </h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                  <a href="#" class="btn btn-light">Learn More</a>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="service-item">
                  <span class="fa-stack fa-4x">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-flask fa-stack-1x text-primary"></i>
                  </span>
                  <h4>
                    <strong>Service Name</strong>
                  </h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                  <a href="#" class="btn btn-light">Learn More</a>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="service-item">
                  <span class="fa-stack fa-4x">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-shield fa-stack-1x text-primary"></i>
                  </span>
                  <h4>
                    <strong>Service Name</strong>
                  </h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                  <a href="#" class="btn btn-light">Learn More</a>
                </div>
              </div>
            </div>
            <!-- /.row (nested) -->
          </div>
          <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
    </section>


    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
            <h4>
              <strong>Start Bootstrap</strong>
            </h4>
            <p>3481 Melrose Place
              <br>Beverly Hills, CA 90210</p>
            <ul class="list-unstyled">
              <li>
                <i class="fa fa-phone fa-fw"></i>
                (123) 456-7890</li>
              <li>
                <i class="fa fa-envelope-o fa-fw"></i>
                <a href="mailto:name@example.com">name@example.com</a>
              </li>
            </ul>
            <br>
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook fa-fw fa-3x"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter fa-fw fa-3x"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-dribbble fa-fw fa-3x"></i>
                </a>
              </li>
            </ul>
            <hr class="small">
            <p class="text-muted">Copyright &copy; Your Website 2017</p>
          </div>
        </div>
      </div>
      <a id="to-top" href="#top" class="btn btn-dark btn-lg js-scroll-trigger">
        <i class="fa fa-chevron-up fa-fw fa-1x"></i>
      </a>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/stylish-portfolio.js"></script>
	<script type="text/javascript">
		function viewCar(){
			sendRequest("car.jsp", "1", dataView, "post");
		}
		function imgView(){
			if(httpRequest.readyState == 4 && httpRequest.status == 200){
				document.getElementById("imgView").innerHTML 
				= httpRequest.responseText;
			}
		}	
		
	</script>
  </body>

</html>
