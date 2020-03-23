<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ben Delivery</title>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<link rel="stylesheet" href="/resources/css/mycss.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<style>
.search-input{
	display : none;
	border-radius : 5px;
}
.res-search{
	border-radius : 5px;
}
.real-search{
	margin-top: 10px;
    height: 30px;
	border-radius : 5px;
	display:none;
}
</style>
</head>
<body>
<script>
// 실제 input 데이터로 검색 
function search(){
	var keyword = $(".search-input").val();
	location.href='/user/slist/'+encodeURIComponent(keyword);
}
$(document).ready(function(){
	var category = '${category}';
	$(".category-nav-ul").children().removeClass('active');
	if(category == ""){
		$(".category-nav-ul").children(".전체보기").addClass('active');
	}else{
		$(".category-nav-ul").children("."+category).addClass('active');
	}
	// 검색 버튼 클릭시 검색화면 보이게 
	$(".res-search").on("click", function(){
		$(".res-search").hide();
		$(".real-search").show();
		$(".search-input").show();
	})
});
</script>
<div class="wrapper">
	<!-- Header Start -->
	<div class="header">
		<div class="header-nav">
			<a href="/"><img class="logo-img" style="width:100px;"src="/images/new_logo.png" alt="로고이미지" ></a>
			<div class="navbar">
				 <c:if test="${not empty login }">
					<button class="btn btn-default nav-btn" onclick="location.href='/user/logout'">로그아웃</button>
					<button class="btn btn-default nav-btn" onclick="location.href='/user/mypage'">My Page</button>
				</c:if>
				<c:if test="${empty login }">
					<button class="btn btn-default nav-btn" onclick="location.href='/user/login'">로그인</button>
				</c:if>
				<button class="btn btn-default nav-btn" 
					onclick="<c:if test='${not empty sessionScope.res_no }'>location.href='/user/${sessionScope.res_no }'</c:if>"
					>주문표<c:if test="${not empty sessionScope.res_no}">(ㅇ)</c:if></button>
			</div>
		</div>
	</div>
	<!-- Header End -->
	<!-- SerchBox Start -->
	<div class="searchbox" style="background-image:url('/images/bg-top.png');background-position: center;">
		<div class="main-search">
			<button class="btn btn-default glyphicon glyphicon-map-marker" ></button>
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
					<li><button class="glyphicon glyphicon-search res-search" ></button>
					<input type="text" class="search-input"><button class="glyphicon glyphicon-search real-search" onclick="search()"></button></li>
					<li class="전체보기"><a href="/user/list">전체보기</a></li>
					<li class="1인분"><a href="/user/list/1인분">1인분</a></li>
					<li class="프랜차이즈"><a href="/user/list/프랜차이즈">프랜차이즈</a></li>
					<li class="야식"><a href="/user/list/야식">야식</a></li>
					<li class="한식"><a href="/user/list/한식">한식</a></li>
					<li class="치킨"><a href="/user/list/치킨">치킨</a></li>
					<li class="피자양식"><a href="/user/list/피자양식">피자/양식</a></li>
					<li class="중국집"><a href="/user/list/중국집">중국집</a></li>
					<li class="일식돈까스"><a href="/user/list/일식돈까스">일식/돈까스</a></li>
					<li class="족발보쌈"><a href="/user/list/족발보쌈">족발/보쌈</a></li>
					<li class="분식"><a href="/user/list/분식">분식</a></li>
					<li class="카페디저트"><a href="/user/list/카페디저트">카페/디저트</a></li>
					<li class="편의점"><a href="/user/list/편의점">편의점</a></li>
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