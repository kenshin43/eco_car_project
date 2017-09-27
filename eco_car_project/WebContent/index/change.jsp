<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="id03" class="w3-modal">
	<form action="member.do" style="border: 1px solid #ccc" method="post">
		<input type="hidden" name="type" value="change">
		<div class="w3-modal-content w3-card-4 w3-animate-zoom">
			<div class="container">
				<label><b>비밀번호</b></label> <input type="password"
					placeholder="비밀번호 입력" name="pwd" required> 
					<label><b>이메일</b></label><input type="email" placeholder="이메일 입력" name="email" required>
				<div class="clearfix">
					<button type="submit" class="w3-button w3-blue w3-right">회원 정보 수정</button>
					<button type="button" class="w3-button w3-red w3-right"
						onclick="document.getElementById('id03').style.display='none'">취소</button>
				</div>
			</div>
		</div>
	</form>

</div>