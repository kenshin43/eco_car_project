<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom">
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">&times;</span>
      </div>
      <form action="member.do">
		<input type="hidden" name="type" value="login">
        <div class="w3-section">
          <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="id" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="pwd" required>
          <input class="w3-button w3-block w3-blue w3-section w3-padding" type="submit" value="login">
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked">저장하기
        </div>
      </form>
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-blue w3-right w3-margin-left">취소</button>
      </div>
    </div>
  </div>