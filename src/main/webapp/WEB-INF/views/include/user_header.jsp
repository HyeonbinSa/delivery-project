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
	<!-- 상단 카테고리 별 네비바 -->
	<div class="category-nav">
		<nav class="navbar navbar-default category-navbar">
			<div class="collapse navbar-collapse category-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav category-nav-ul">
					<li><button class="glyphicon glyphicon-search res-search"></button></li>
					<li><a>전체보기</a></li>
					<li><a>1인분</a></li>
					<li><a>프랜차이즈</a></li>
					<li><a>한식</a></li>
					<li><a>치킨</a></li>
					<li><a>피자/양식</a></li>
					<li><a>중국집</a></li>
					<li><a>일식/돈까스</a></li>
					<li><a>족발/보쌈</a></li>
					<li><a>분식</a></li>
					<li><a>카페/디저트</a></li>
					<li><a>편의점</a></li>
					<li class="dropdown ">
		          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">정렬 방식<span class="caret"></span></a>
		          		<ul class="dropdown-menu orderby-ul" role="menu">
			            <li><a href="#">별점 순 </a></li>
			            <li><a href="#">리뷰 많은 순</a></li>
			            <li><a href="#">최소 주문 금액 순</a></li>
			            <li><a href="#">거리 순</a></li>
			            <li><a href="#">배달 시간 순</a></li>
		          		</ul>
		          	</li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- 상단 카테고리별 네비바 end -->