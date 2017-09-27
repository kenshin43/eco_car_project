<%@page import="dao.CarDAO"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- Car -->
	<section id="car">
	<br><br>
	<h1 align="center" style="margin-top:3%; margin-bottom:7%">전기자동차</h1>
	<!-- Photo grid -->
	<div class="w3-row">
		<div class="w3-third w3-hover-grey" id="car0"></div>
		<div class="w3-third w3-hover-grey" id="car1"></div>
		<div class="w3-third w3-hover-grey" id="car2"></div>
	</div>
	<input type="hidden" id="carList" value='<%=JSONArray.fromObject(CarDAO.viewCar()).toString()%>'>
	<!-- Pagination -->
	<div class="w3-center w3-padding-64">
		<div class="w3-bar">
			<a onclick="" class="w3-bar-item w3-button w3-xlarge w3-hover-blue">&laquo;</a>
			<a onclick="viewCarTable(this.value)"
				class="w3-bar-item w3-button w3-xlarge w3-hover-blue" value="1">1</a> <a
				onclick="viewCarTable(this.value)"
				class="w3-bar-item w3-button w3-xlarge w3-hover-blue" value="2">2</a> <a
				onclick="viewCarTable(this.value)"
				class="w3-bar-item w3-button w3-xlarge w3-hover-blue" value="3">3</a> <a
				onclick="viewCarTable(this.value)"
				class="w3-bar-item w3-button w3-xlarge w3-hover-blue" value="4">4</a> <a
				onclick="viewCarTable(this.value)"
				class="w3-bar-item w3-button w3-xlarge w3-hover-blue" value="5">5</a> <a
				onclick="" class="w3-bar-item w3-button w3-xlarge w3-hover-blue">&raquo;</a>
		</div>
	</div>

	<!-- Modal for full size images on click-->
	<div id="modal01" class="w3-modal w3-black" style="padding-top: 0"
		onclick="this.style.display='none'">
		<span class="w3-button w3-black w3-xlarge w3-display-topright">&times;</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img id="img01" class="w3-image">
			<p><br><br>
				<table id="info" class="w3-table w3-display-bottom w3-bordered w3-centered w3-xlarge" style="width:90%"></table>
			</p>
		</div>
	</div>

	</section>
	<script type="text/javascript">
		function onClick(element) {
			document.getElementById("img01").src = element.src;
			document.getElementById("modal01").style.display = "block";
		}
	</script>