var jsonData;
var map;

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
function recent(lat, lng) {
	sendRequest("station.do", "type=recentStation&lat=" + lat + "&longi=" + lng, view, "post");
	document.getElementById("leadMsg").innerHTML = "당신 근처에 있는 당신을 위한 위한 충전소...";
}

function selected(i) {
	var darwin = new google.maps.LatLng(jsonData[i].lat, jsonData[i].longi);
	map.setCenter(darwin);
	var infoWindow = new google.maps.InfoWindow({
		map : map
	});
	infoWindow.setContent(jsonData[i].csnm);
	infoWindow.setPosition(darwin);
}

function searchStation() {
	var name = document.getElementById("stationName").value;
	if (name == "".split()) {
	} else {
		sendRequest("station.do", "type=searchStation&name=" + name, view, "post");
		document.getElementById("leadMsg").innerHTML = "당신이 찾고있는 최적의 충전소...";
	}
}

function view() {
	if (httpRequest.readyState == 4 && httpRequest.status == 200) {
		jsonData = httpRequest.responseText;
		var html = '<tr><td>전기 주유소 명</td><td>위치</td><td>충전기 개수</td></tr>';
		jsonData = JSON.parse(jsonData);
		var i = 0;
		for (i; i < jsonData.length; i++) {
			html += "<tr><td onclick='selected(" + i + ")'>" + jsonData[i].csnm + "</td><td>" + jsonData[i].addr + "</td><td>" + jsonData[i].chargetp + "</td>";
			if (member != null) {
				html += "<td><a onclick='insertFavorite(" + i + ")'>" + "☆" + "</a></td>";
			}
		}
		document.getElementById("mapList").innerHTML = html;
	}
}

function favoriteView() {
	if (httpRequest.readyState == 4 && httpRequest.status == 200) {
		document.getElementById("leadMsg").innerHTML = "당신이 사랑하는 충전소는...";
		jsonData = httpRequest.responseText;
		var html = '<tr><td>전기 주유소 명</td><td>위치</td><td>충전기 개수</td></tr>';
		jsonData = JSON.parse(jsonData);
		var i = 0;
		for (i; i < jsonData.length; i++) {
			html += "<tr><td onclick='selected(" + i + ")'>" + jsonData[i].csnm + "</td><td>" + jsonData[i].addr + "</td><td>" + jsonData[i].chargetp + "</td>";
			if (member != null) {
				html += "<td><a onclick='deleteFavorite(" + i + ")'>" + "★" + "</a></td>";
			}
		}
		document.getElementById("mapList").innerHTML = html;
	}
}

function insertFavorite(i) {
	var cpid = jsonData[i].cpid;
	sendRequest("station.do", "type=insertFavorite&cpid=" + cpid, resultView, "post");
}

function deleteFavorite(i) {
	var cpid = jsonData[i].cpid;
	sendRequest("station.do", "type=deleteFavorite&cpid=" + cpid, resultView, "post");
}

function resultView() {
	if (httpRequest.readyState == 4 && httpRequest.status == 200) {
		result = httpRequest.responseText;
		window.alert(result);
		favorite();
	}
}
function favorite(){
	sendRequest("station.do", "type=favoriteStation", favoriteView, "post");
}
(function (){
	document.getElementById('id01').style.display='none';
	document.getElementById('id02').style.display='none';
});
