<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div id="header" class="header">
	<div>
		<div class="navigation">
			<h1 class="logo">요기요</h1>
			<button onclick="location.href='/login'">로그인</button>
		</div>
	</div>
</div>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
