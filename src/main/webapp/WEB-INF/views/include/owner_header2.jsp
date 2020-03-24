<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ben Delivery - Owner</title>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<link rel="stylesheet" href="/resources/css/mycss.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<style>
.header{
	background : #fafafa;
	border-bottom : 3px solid #999;
}
 .main-content{
 	background:#fff;
 	height:auto;
 	padding :0px 10%;
 }
 .nav-btn{
 	background : #fafafa;
 	color : #999;
 }
 .navbar{
	margin-bottom : 0px;
}
.category-nav{
	height: 56px;
}
</style>	
<body>
<div class="wrapper">
	<!-- Header Start -->
	<div class="header">
		<div class="header-nav">
			<a href="/owner/"><img class="logo-img" style="width:100px;"src="/images/new_logo.png" alt="로고이미지" ></a>
			<div class="navbar">
				 <c:if test="${owner_login != null}">
					<button class="btn btn-default nav-btn" onclick="location.href='/owner/logout'">로그아웃</button>
					<button class="btn btn-default nav-btn" onclick="location.href='/owner/myshop'">My Shop</button>
				</c:if>
				<c:if test="${owner_login == null }">
					<button class="btn btn-default nav-btn" onclick="location.href='/owner/register'">입점신청</button>
					<button class="btn btn-default nav-btn" onclick="location.href='/owner/login'">로그인</button>
				</c:if>
			</div>
		</div>
	</div>
	<!-- Header End -->
	<!-- 상단 카테고리 별 네비바 -->
	<div class="category-nav">
		<nav class="navbar navbar-default category-navbar">
			<div class="collapse navbar-collapse category-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav category-nav-ul">
					<li><a href="/owner/menus">메뉴 관리</a></li>
					<li><a href="/owner/operation">가게 정보 관리</a></li>
					<li><a href="/owner/order">주문 관리</a></li>
					<li class="li-review"><a href="/owner/review">리뷰 관리</a></li>
					<li><a>영업 관리</a></li>
					<li><a>사장님 공지</a></li>
					<li><a>통계</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- 상단 카테고리별 네비바 end -->

<div class="main-content">