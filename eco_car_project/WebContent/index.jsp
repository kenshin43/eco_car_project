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
          <a class="js-scroll-trigger" href="#news">이슈보기</a>
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
    <aside class="callout">
      <div class="text-vertical-center">
        <h1>지구를 지켜주세요</h1>
      </div>
    </aside>
    
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
	<script src="httpRequest.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwUF9LDOFrejQdPb7FvfCNwbW1zf8aow4&callback=initMap"
		async="" defer=""></script>
	<script type="text/javascript">
	selectCar();
	setTimeout(function() {
		selectNews();
		}, 100);
	function selectNews(){
		sendRequest("news.do", null, viewNews, "POST");
	}
	function viewNews(){
		if(httpRequest.readyState==4 && httpRequest.status== 200){
		var json = httpRequest.responseText;
		var jsonData = JSON.parse(json);
		console.log(jsonData);
		var ran = [];
		var j = 0;
		for(j = 0; j < 5; j++){ 
			ran[j] = Math.floor(Math.random() * 20);
			if(ran[j] == ran[j+1]){
				ran[j] = Math.floor(Math.random() * 20);''
			}
		}
		var j = 0;
		for(j ; j < 5; j++){
			var title = "<a class='newsTag' href='" + jsonData[ran[j]].linkUrl + "'>" + jsonData[ran[j]].title + "</a>";
			var des = "<a class='newsTag' href='" + jsonData[ran[j]].linkUrl + "'>" + jsonData[ran[j]].des + "</a>";
			document.getElementById("title"+j).innerHTML = title;
			document.getElementById("des"+j).innerHTML = des;
			}
		}
	}
	function selectCar(){
		sendRequest("car.do", null, viewCar, "POST");
	}
	var jsonCar;
	function viewCar(){
		if(httpRequest.readyState==4 && httpRequest.status== 200){
			var json = httpRequest.responseText;
			console.log(json);
			jsonCar = JSON.parse(json);
			console.log(jsonCar);
			viewCarTable();
		}
	}
	var carCnt = 0;
	function viewCarTable(num){
		var j = 0;
		for(j; j < 6; j++){
		var carImg = "<img src='imgCar/" + jsonCar[carCnt+j].img + "' style='width:100%' onclick='onClick(this)'>";
		document.getElementById("car"+j).innerHTML = carImg;
		console.log(jsonCar[carCnt+j])
		var str = jsonCar[carCnt+j].brand + jsonCar[carCnt+j].name;
		document.getElementById("caption").innerHTML = str;
			carCnt++;
		}
		if(carCnt==jsonCar.lenth){
			carCnt = 0;
		}
	}
	</script>
	<script src="ecoFunction.js"></script>
  </body>

</html>
