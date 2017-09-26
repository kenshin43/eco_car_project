<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<section id="news" class="services bg-primary text-white">
	<div class="w3-container">
		<h1 align="center">News</h1>
	</div>
	<div class="w3-row-padding w3-content" style="max-width: 1400px">
		<div class="w3-twothird">
			<img src="greencar.jpg" style="width: 60%">
			<h4 id="title0" style="color : white;"></h4>
			<div class="w3-justify">
				<p id="des0"></p>
			<img src="i.jpg" style="width: 60%">
			<h4 id="title1" style="color : white;"></h4>
			<div class="w3-justify">
				<p id="des1"></p>
			</div>
		</div>
		<div class="w3-third">
			<div class="w3-container w3-light-grey">
				<h4 id="title2"></h4>
				<p class="w3-justify" id="des2"></p>
			</div>
			<br>
			<div class="w3-container w3-light-grey w3-justify">
				<h4 id="title3"></h4>
				<p class="w3-justify" id="des3"></p>
			</div>
			<br>
			<div class="w3-container w3-light-grey w3-justify">
				<h4 id="title4"></h4>
				<p class="w3-justify" id="des4"></p>
			</div>
		</div>
	</div>
	</div>
	</section>
	<script type="text/javascript">
		selectNews();
		function selectNews(){
			sendRequest("news.do", null, viewNews, "get")
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
					ran[j] = Math.floor(Math.random() * 20);
				}
			}
			var j = 0;
			for(j ; j < 5; j++){
				var title = "<a href='" + jsonData[ran[j]].linkUrl + "'>" + jsonData[ran[j]].title + "</a>";
				var des = "<a href='" + jsonData[ran[j]].linkUrl + "'>" + jsonData[ran[j]].des + "</a>";
				console.log(title);
				console.log(des);
				document.getElementById("title"+j).innerHTML = title;
				document.getElementById("des"+j).innerHTML = des;
			}
		}
		}
		
	</script>