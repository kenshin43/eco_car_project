<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<table id = "recentMapList"></table>
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
	<script src="../httpRequest.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwUF9LDOFrejQdPb7FvfCNwbW1zf8aow4&callback=initMap"
		async="" defer=""></script>
	<script type="text/javascript">
		var jsonData;
		function recent(lat,lng){
			sendRequest("../station.do", "type=recentStation&lat="+lat+"&longi="+lng, view, "post");
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
		function view(){
			jsonData = httpRequest.responseText;
			var html ='<tr><td>전기 주유소 명</td><td>위치</td><td>충전기 개수</td></tr>';
			jsonData = JSON.parse(jsonData);
			var i = 0;
			for(i;i<jsonData.length;i++){
				html+="<tr><td onclick='selected("+i+")'>"+jsonData[i].csnm+"</td><td>"+jsonData[i].addr+"</td><td>"+jsonData[i].chargetp+"</td>";
			}
			document.getElementById("recentMapList").innerHTML = html;			
		}
	</script>
	-----
	<section id="about" class="about">
      <div class="container text-center">
        <h2>전기자동차 충전소 정보 출력부분</h2>
        <p class="lead">충전소 이름
          <a target="_blank" href="http://join.deathtothestockphoto.com/">Death to the Stock Photo</a>.</p>
      </div>
      <!-- /.container -->
    </section>

	<section id="contact" class="map">
      <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
      <br/>
      <small>
        <div id="map" style="width: 100%; height: 500px; display: block;"></div>
      </small>
    </section>
