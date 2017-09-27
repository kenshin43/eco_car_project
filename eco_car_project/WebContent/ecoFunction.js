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

setTimeout(function() {
	selectNews();
	}, 150);
function selectNews(){
	sendRequest("news.do", null, viewNews, "POST");
}
function viewNews(){
	if(httpRequest.readyState==4 && httpRequest.status== 200){
	var json = httpRequest.responseText;
	var jsonData = JSON.parse(json);
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
		jsonCar = JSON.parse(json);
		viewCarTable();
	}
}
var carCnt = 0;
function viewCarTable(num){
	var j = 0;
	for(j; j < 3; j++){
		var carImg = "<img src='imgCar/" + jsonCar[carCnt+j].img + "' style='width:100%' onclick='onClick(this)'>";
		document.getElementById("car"+j).innerHTML = carImg;
		
		var str = "<tr><td>연식</td><td>" + jsonCar[carCnt+j].year + "</td></tr>"
					+ "<tr><td>브랜드</td><td>" + jsonCar[carCnt+j].brand + "</td></tr>"
					+ "<tr><td>모델명</td><td>" + jsonCar[carCnt+j].name + "</td></tr>"
					+ "<tr><td>가격</td><td>" + jsonCar[carCnt+j].price + "만원" + "</td></tr>"
					+ "<tr><td>연비</td><td>" + jsonCar[carCnt+j].distance + "</td></tr>";
		document.getElementById("info").innerHTML = str;
			carCnt++;
	}
	if(carCnt==jsonCar.lenth){
		carCnt = 0;
	}
}
selectCar();
