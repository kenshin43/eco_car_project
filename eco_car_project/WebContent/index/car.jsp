<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.CarDTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="w3-light-grey w3-content" style="max-width:1600px">

	<!-- Car -->
	<h1 align="center" padding="30%">전기자동차</h1>
	<section id="car">
	<!-- Photo grid -->
  <div class="w3-row">
    <div class="w3-third" id="car0">
    </div>
    <div class="w3-third" id="car1">
    </div>
    <div class="w3-third" id="car2">
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a onclick="" class="w3-bar-item w3-button w3-hover-blue">&laquo;</a>
      <a onclick="viewCarTable(this.value)" class="w3-bar-item w3-button w3-hover-blue" value="1">1</a>
      <a onclick="viewCarTable(this.value)" class="w3-bar-item w3-button w3-hover-blue" value="2">2</a>
      <a onclick="viewCarTable(this.value)" class="w3-bar-item w3-button w3-hover-blue" value="3">3</a>
      <a onclick="viewCarTable(this.value)" class="w3-bar-item w3-button w3-hover-blue" value="4">4</a>
      <a onclick="viewCarTable(this.value)" class="w3-bar-item w3-button w3-hover-blue" value="5">5</a>
      <a onclick="" class="w3-bar-item w3-button w3-hover-blue">&raquo;</a>
    </div>
  </div>
  
  <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
    <span class="w3-button w3-black w3-xlarge w3-display-topright">&times;</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img id="img01" class="w3-image">
      <p id="caption"></p>
    </div>
  </div>
	
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-lg-12 mx-auto text-center"> -->
<!-- 				<h2>전기자동차</h2> -->
<!-- 				<hr class="small"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="pagination"> -->
<!-- 						<a class="w3-btn" onclick="viewCarTable()"> < </a> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-3"> -->
<!-- 						<div class="portfolio-item" id="car0"></div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-3"> -->
<!-- 						<div class="portfolio-item" id="car1"></div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-3"> -->
<!-- 						<div class="portfolio-item" id="car2"></div> -->
<!-- 					</div> -->
<!-- 					<div class="pagination"> -->
<!-- 						<a class="w3-btn" href="#">></a> -->
<!-- 					</div> -->
<!-- 					Modal for full size images on click -->
<!-- 					<div id="modal01" class="w3-modal w3-black" style="padding-top: 0" -->
<!-- 						onclick="this.style.display='none'"> -->
<!-- 						<span class="w3-button w3-black w3-xlarge w3-display-topright">&times;</span> -->
<!-- 						<div -->
<!-- 							class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64"> -->
<!-- 							<img id="car0" class="w3-image"> -->
<!-- 							<p id="caption"></p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</section>
	<script type="text/javascript">
		function onClick(element) {
			document.getElementById("img01").src = element.src;
			document.getElementById("modal01").style.display = "block";
			var captionText = document.getElementById("caption");
			captionText.innerHTML = element.alt;
		}
	</script>
</body>
</html>