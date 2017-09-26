<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header" id="top">
      <div class="text-vertical-center">
        <h1>ECO STATION</h1>
        <h3>당신의 전기차, 최고의 동반자</h3>
        <br>
        <span class="green_window">
        	<input type="hidden" name="type" value="searchStation">
            <input type="text" id="stationName" name="name" title="검색어 입력" maxlength="255" class="input_text" tabindex="1" accesskey="s" style="ime-mode:active;" autocomplete="off" onclick="document.getElementById('fbm').value=1;" value="">
        </span>
        <br>
        <a class="btn btn-dark btn-lg js-scroll-trigger" onclick="searchStation()" href="#about">검색</a>
      </div>
</header>