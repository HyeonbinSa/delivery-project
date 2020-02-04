<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Login Start-->
<div>
<div id="title_login">
<span>Yogiyo</span></div>
<form method="post">
<input type="hidden" name="role" value="user">
<ul>
	<li>
		<input type="text" id="loginEmail" name="loginEmail" placeholder="이메일 주소 입력(필수)">
		<span>이메일 주소를 입력해주세요.</span>
		<span>유효한 이메일 형식이 아닙니다.</span>
	</li>
	<li>
		<input type="password" id="loginPw" name="loginPw" placeholder="비밀번호 입력(필수)">
		<span>이메일 주소를 입력해주세요.</span>
		<span>유효한 이메일 형식이 아닙니다.</span>
	</li>
</ul>
<button type="submit">로그인</button>
</form>
</div>
<!-- Login end -->
<!-- 회원가입  -->
<div>
요기요가 처음이신가요?
<span id="join" onclick="location.href='/user/join'" style="color: #ff333a">이메일 회원가입</span>
</div>
</body>
</html>