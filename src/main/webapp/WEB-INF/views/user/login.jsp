<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- Login Start-->
<div class="container-fruid ng-scope" id="content">
<div id="login-wrap ng-scope">
<form method="post" name="form_rogin" class="ng-pristine ng-invalid ng-invalid-required ng-valid-pattern">
<div class="login-form">
<div class="title">
<h1 class="logo pull-left">요기요</h1>
<ul class="list-group">
	<li class="list-group-item"> 
		<input type="text" id="loginEmail" name="member_id" placeholder="이메일 주소 입력(필수)">
		<span>이메일 주소를 입력해주세요.</span>
		<span>유효한 이메일 형식이 아닙니다.</span>
	</li>
	<li class="list-group-item">
		<input type="password" id="loginPw" name="member_pw" placeholder="비밀번호 입력(필수)">
		<span>이메일 주소를 입력해주세요.</span>
		<span>유효한 이메일 형식이 아닙니다.</span>
	</li>
</ul>
<div id="checkbox">
<input type="checkbox" id="keep_login" name="keep_login" class="ng-pristine ng-untouched ng-valid">
<label class="keep_login"><span></span>자동로그인</label>

</div>
<button type="submit" class="btn ng-binding btn_login">로그인</button>
</div>
</div>
</form>
</div>
</div>
<!-- Login end -->
<!-- 회원가입  -->
<div>
요기요가 처음이신가요?
<span id="join" onclick="location.href='/user/join'" style="color: #ff333a">이메일 회원가입</span>
</div>
</body>
</html>