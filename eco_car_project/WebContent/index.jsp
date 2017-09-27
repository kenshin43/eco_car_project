<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <head>
    <title>Eco-Car Station</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/eco.css">
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="css/stylish-portfolio.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 	<script type="text/javascript">
 	<c:if test="${empty sessionScope.member}">
 	var member = null;
 	</c:if>
 	<c:if test="${not empty sessionScope.member}">
 	var member = "${sessionScope.member.id}";
 	</c:if>
 	</script>
 	
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
			<c:choose>
				<c:when test="${empty sessionScope.member}">
					
					<li class="sidebar-brand"><a class="js-scroll-trigger"
						onclick="document.getElementById('id01').style.display='block';">로그인</a></li>
					<li class="sidebar-brand"><a class="js-scroll-trigger"
						onclick="document.getElementById('id02').style.display='block';">회원가입</a></li>
				</c:when>
				<c:otherwise>
					<li class="sidebar-brand"><a class="js-scroll-trigger"
						href="member.do?type=logout">로그아웃</a></li>
					<li class="sidebar-brand"><a class="js-scroll-trigger"
						onclick="document.getElementById('id03').style.display='block';">회원정보수정</a></li>
					<li class="sidebar-brand"><a class="js-scroll-trigger"
						href="#about" onclick="favorite()">나의 즐겨찾는 주유소</a></li>
				</c:otherwise>
			</c:choose>
			<li>
          <a class="js-scroll-trigger" href="#top">메인화면</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#about">충전소정보</a>
        </li>
        <li>
           <a class="js-scroll-trigger" href="#car">전기자동차</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#news">뉴스</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#contact" onclick=$( "#menu-close").click();></a>
        </li>
      </ul>
    </nav>
    
	<%@include file="index/login.jsp"%>
	<%@include file="index/join.jsp"%>
	<%@include file="index/change.jsp"%>
	
    <!-- Header -->
	<%@include file="index/header.jsp"%>
	
    <!-- About -->
    <%@include file="index/map.jsp"%>
    
	<!-- Car -->
    <%@include file="index/car.jsp"%>
	<!-- News -->
    <%@include file="index/news.jsp"%>
	
	<!-- Callout -->
    <aside class="callout1">
      <div class="text-vertical-center">
      </div>
    </aside>
    
    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
          	<img src="e.jpg" onclick="location.href='https://ev.or.kr/portal/main'" style="width:20%">
            <p class="text-muted">Copyright &copy; 동승조 2017</p>
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
	<script src="httpRequest.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAleY05YLGGXlCg7fglyYbaxg1ygurk4IA&callback=initMap"
		async="" defer=""></script>
	<script src="ecoFunction.js"></script>
  </body>

</html>
