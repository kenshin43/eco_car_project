<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<section id="about" class="about">
	<div class="container text-center">
		<h2>전기 자동차 충전소</h2>
		<p class="lead" id="leadMsg"></p>
		<table id="mapList" class="w3-table w3-bordered" ></table>
	</div>
	<!-- /.container -->
</section>
<section id="contact" class="map">
	<div id="map" style="width: 100%; height: 500px; display: block;"></div>
	<small> </small>
</section>
	<script>
		map;
		function mapStart() {
			let infoWindow;
			window.initMap = function() {
				map = new google.maps.Map(document.getElementById('map'), {
					center : {
						lat : 0,
						lng : 0
					},
					zoom : 16
				});
				infoWindow = new google.maps.InfoWindow({
					map : map
				}); infoWindow.setContent("현위치");
			};
			function successCallback(position) {
				let pos = {
					lat : position.coords.latitude,
					lng : position.coords.longitude
				};
				infoWindow.setPosition(pos); map.setCenter(pos); 
				recent(pos.lat,pos.lng);
			}
			function errorCallback(error) {
				alert("Error: " + error.message);
			}
			navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
		}
		mapStart();
	</script>
	<script src="httpRequest.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwUF9LDOFrejQdPb7FvfCNwbW1zf8aow4&callback=initMap"
		async="" defer=""></script>
	<script type="text/javascript">
		var jsonData;
		
		function recent(lat,lng){
			sendRequest("station.do", "type=recentStation&lat="+lat+"&longi="+lng, view, "post");
			document.getElementById("leadMsg").innerHTML = "당신 근처에 있는 당신을 위한 위한 충전소...";
		}
		
		function selected(i){
			var darwin = new google.maps.LatLng(jsonData[i].lat,jsonData[i].longi);
			map.setCenter(darwin);
			var infoWindow = new google.maps.InfoWindow({
				map : map
			}); 
			infoWindow.setContent(jsonData[i].csnm);
			infoWindow.setPosition(darwin);
		}
		
		function searchStation(){
			var name = document.getElementById("stationName").value;
			if(name=="".split()){
			} else{
				sendRequest("station.do", "type=searchStation&name="+name, view, "post");
				document.getElementById("leadMsg").innerHTML = "당신이 찾고있는 최적의 충전소...";
			}
		}
		
		function view(){
			jsonData = httpRequest.responseText;
			console.log(jsonData);
			var html ='<tr><td>전기 주유소 명</td><td>위치</td><td>충전기 개수</td></tr>';
			jsonData = JSON.parse(jsonData);
			var i = 0;
			for(i;i<jsonData.length;i++){
				html+="<tr><td onclick='selected("+i+")'>"+jsonData[i].csnm+"</td><td>"+jsonData[i].addr+"</td><td>"+jsonData[i].chargetp+"</td>";
				html+="<td>"+"☆"+"</td>";
			}
			document.getElementById("mapList").innerHTML = html;
		}
		
		function insertFavorite(i){
			var cpid = jsonData[i].cpid;
		}
	</script>