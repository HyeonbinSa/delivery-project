<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- join start -->
<div>
<form>
<strong>회원 정보 입력</strong>
<ul>
<li>
<input type="text" placeholder="(필수)이메일 주소 입력" name="email" >
</li>
<li>
<input type="password" placeholder="(필수)비밀번호 입력" name="password" >
</li>
<li>
<input type="password" placeholder="(필수)비밀번호 재확인" name="confirmpassword" >
</li>
<li>
<input type="text" placeholder="(필수)닉네임 입력" name="nickname" >
</li>
</ul>
<strong>휴대폰 번호</strong>
<ul>
<li>
<input type="text" placeholder="(필수)휴대폰 번호 입력(-제외)" name="phone" >
</li>
</ul>
</form>
<button type="submit">회원가입 완료</button>
</div>

</body>
</html>