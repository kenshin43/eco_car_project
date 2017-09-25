<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button id="getLocation" type="button">위치 정보 수집</button>
	<div id="map" style="width: 500px; height: 500px; display: block;"></div>
	<script>(function() {
			let map,
				infoWindow;
			window.initMap = function() {
				map = new google.maps.Map(document.getElementById('map'), {
					center : {
						lat : -34.397,
						lng : 150.644
					},
					zoom : 8
				});
				infoWindow = new google.maps.InfoWindow({
					map : map
				}); infoWindow.setContent('Your location');
			};
			function successCallback(position) {
				let pos = {
					lat : position.coords.latitude,
					lng : position.coords.longitude
				};
				infoWindow.setPosition(pos); map.setCenter(pos); 
				alert("Your current position is: latitude(" + pos.lat + "), longitude(" + pos.lng + ")");
			}
			function errorCallback(error) {
				alert("Error: " + error.message);
			}
			document.getElementById("getLocation").onclick = function() {
				navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
			};
		}());
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwUF9LDOFrejQdPb7FvfCNwbW1zf8aow4&callback=initMap"
		async="" defer=""></script>
</body>
</html>