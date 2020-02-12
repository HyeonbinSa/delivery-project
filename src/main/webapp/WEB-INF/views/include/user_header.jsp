<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Design Test Page</title>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<link rel="stylesheet" href="/resources/css/mycss.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
</head>
<body>
<div class="wrapper">
	<!-- Header Start -->
	<div class="header">
		<div class="header-nav">
			<a href="/"><img class="logo" src="" alt="로고이미지" ></a>
			<div class="navbar">
				 <c:if test="${not empty login }">
					<button class="btn btn-default nav-btn" onclick="location.href='/user/logout'">로그아웃</button>
					<button class="btn btn-default nav-btn" onclick="location.href='/user/mypage'">My Page</button>
				</c:if>
				<c:if test="${empty login }">
					<button class="btn btn-default nav-btn" onclick="location.href='/user/login'">로그인</button>
				</c:if>
				<button class="btn btn-default nav-btn">주문표</button>
			</div>
		</div>
	</div>
	<!-- Header End -->
	<!-- SerchBox Start -->
	<div class="searchbox">
		<div class="main-search">
			<button class="btn btn-default glyphicon glyphicon-map-marker"></button>
			<div class="input-group search-group">
				<input type="text" class="form-control search-address" placeholder="건물명, 도로명, 지번으로 검색하세요.">
				<span class="input-group-btn">
					<button class="btn btn-default searchBtn" type="button">Go!</button>
				</span>
    		</div><!-- /input-group -->
		</div>
	</div>
	<!-- SearchBox End -->
	