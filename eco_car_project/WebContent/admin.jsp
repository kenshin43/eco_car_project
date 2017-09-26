<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.member.isAdmin==1}">
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
  <head>
    <title>Stylish Portfolio - Start Bootstrap Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="css/stylish-portfolio.css" rel="stylesheet">
  </head>
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
      </ul>
    </nav>

    <header class="header" id="top">
      <div class="text-vertical-center">
        <h1>관리자님 환영합니다.</h1>
        <h3>하늘과도 같은 관리자, 사이트의 자유로운 그러나 혹독한 관리를...</h3>
      </div>
    </header>

    <!-- About -->
    <section id="about" class="about">
      <div class="container text-center">
        <h2>관리자님 가입자를 관리해 주세요.</h2>
        <p class="lead">혹독한 관리를 받을 가입자님들..</p>
        <button onclick="memberList()" class="w3-button w3-red">심판</button>
        <table id="mapList" class="w3-table w3-bordered" ></table>
      </div>
    </section>

	<section id="contact" class="map">
      <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
      <br/>
      <small>
        <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
      </small>
    </section>
    
    <!-- Callout -->
    <aside class="callout">
      <div class="text-vertical-center">
        <h1>Vertically Centered Text</h1>
      </div>
    </aside>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
      <div class="container" >
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
            <h2>전기자동차</h2>
            <hr class="small">
            <div class="row">
              <div class="col-md-4">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="imgCar/2018BenzS560e.png">
                  </a>
                </div>
              </div>
              <div class="col-md-4">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="imgCar/2017TeslaModelS.png">
                  </a>
                </div>
              </div>
              <div class="col-md-4">
                <div class="portfolio-item">
                  <a href="#">
                    <img class="img-portfolio img-fluid" src="imgCar/2017ToyotaPrius.png">
                  </a>
                </div>
              </div>
              <div class="w3-bar">
  				<a href="#" class="w3-button w3-hover-blue w3-large">&laquo;</a>
				<a href="#" class="w3-button w3-hover-blue w3-large">1</a>
				<a href="#" class="w3-button w3-hover-blue w3-large">2</a>
				<a href="#" class="w3-button w3-hover-blue w3-large">3</a>
				<a href="#" class="w3-button w3-hover-blue w3-large">4</a>
				<a href="#" class="w3-button w3-hover-blue w3-large">5</a>
				<a href="#" class="w3-button w3-hover-blue w3-large">&raquo;</a>
			 </div>
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
            <p class="text-muted">Copyright &copy; 동승조 2017</p>
          </div>
        </div>
      </div>
      <a id="to-top" href="#top" class="btn btn-dark btn-lg js-scroll-trigger">
        <i class="fa fa-chevron-up fa-fw fa-1x"></i>
      </a>
    </footer>

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/stylish-portfolio.js"></script>

<script type="text/javascript">
	function memberList(){
		sendRequest("station.do", "type=insertFavorite&cpid=" + cpid, resultView, "post");
		document.getElementById("mapList").innerHTML = "";
	}
	function 
</script>
  </body>
</html>
</c:if>
