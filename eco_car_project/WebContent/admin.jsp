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
          <a class="js-scroll-trigger" href="index.jsp">사이트로 이동하기</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#top">메인화면</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#about">가입자 관리</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#callout">뉴스 최신화</a>
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
    
    <!-- Callout -->
    <aside id="callout" class="callout">
      <div class="text-vertical-center">
        <h1>뉴스 최신화</h1>
        <br><br>
        <h4>가입자를 위한 관리자의 하늘과도 같은 헌신</h4>
        <br>
        <button onclick="recentNews()" class="w3-button w3-blue">헌신</button>
      </div>
    </aside>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
      <div class="container" >
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
          <!-- int cpid, String csnm, String addr, double lat, double longi, int chargetp -->
            <h2>정류장 최신화</h2>
            <div class="row">
            <table class="w3-table w3-bordered">
            <tr>
            <td>정류장 id</td>
            <td><input type="text" id="cpid" class="w3-input" required></td>
            </tr>
            <tr>
            <td>이름</td>
            <td><input type="text" id="csnm" class="w3-input" required></td>
            </tr>
            <tr>
            <td>주소</td>
            <td><input type="text" id="addr" class="w3-input" required></td>
            </tr>
            <tr>
            <td>위도</td>
            <td><input type="text" id="lat" class="w3-input" required></td>
            </tr>
            <tr>
            <td>경도</td>
            <td><input type="text" id="longi" class="w3-input" required></td>
            </tr>
            <tr>
            <td>충전기 수</td>
            <td><input type="text" id="chargetp" class="w3-input"required></td>
            </tr>
            </table>
            <button id="stationBtn" class="w3-button w3-gray" style="margin:0 auto;">추가</button>
           </div>
          <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
      </div>
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
	<script src="httpRequest.js"></script>
	<script type="text/javascript">
		var memberButton = true;
		function memberList(){
			if(memberButton){
				sendRequest("admin.do", "type=member", memberTable, "POST");
			} else{
				document.getElementById("mapList").innerHTML = "";
			}
			memberButton=!memberButton;
		}
		var userTable;
		function memberTable(){
			if(httpRequest.readyState==4 && httpRequest.status== 200){
				var i = 0;
				var table = "<tr><td>아이디</td><td>이메일</td><td>관리</td><tr>";
				var json = httpRequest.responseText;
				userTable = JSON.parse(json);
				for(i;i<userTable.length;i++){
					table+= "<tr><td>"+userTable[i].id+"</td><td>"+userTable[i].email+"</td><td><button onclick='withdrawal("+i+")'>심판</button></td>";
				}
				document.getElementById("mapList").innerHTML = table;
			}
		}
		function withdrawal(index) {
			msg = userTable[index].id + "님을 정말로 심판하시겠습니까??";
			if (confirm(msg) != 0) {
				sendRequest("admin.do", "type=withdrawal&id="+userTable[index].id, withdrawalResult, "POST");
			}
		}
		function withdrawalResult(){
			if(httpRequest.readyState==4 && httpRequest.status== 200){
				window.alert(httpRequest.responseText);
				memberButton = true;
				memberList();
			}
		}
		function recentNews(){
			sendRequest("parseServlet.do", null, function(){
				if(httpRequest.readyState==4 && httpRequest.status== 200){
					window.alert("뉴스 최신화가 완료되었습니다!!");
				}
			}, "POST");
		}
		document.getElementById("cpid").addEventListener("change", function() {
			sendRequest("admin.do", "type=existStation&cpid="+this.value, function(){
				if(httpRequest.readyState==4 && httpRequest.status== 200){
					var result = httpRequest.responseText;
					console.log(result);
					if(result=="ture"){
						document.getElementById("stationBtn").innerHTML = "수정"
					} else{
						document.getElementById("stationBtn").innerHTML = "생성"
					}
				}
			}, "POST");
			
		});
		document.getElementById("stationBtn").addEventListener("click", function() {
			window.alert("얍얍");
		});
	</script>
  </body>
</html>
</c:if>
