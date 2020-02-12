<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Design Test Page</title>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<style>

.header{
	height:87px;
	background:#f0001e;
}
.header-nav{
	margin-left:87px;
	margin-right:87px;
	height:100%;
	padding-top:20px;
}
.logo{
	float : left;
}
.navbar{
	float : right;
}
.nav-btn{
	width:150px;
	height:40px;
	background : #ff8a00;	
	color : white;
	font-size:20px;
}
.searchbox{	
	height:235px;
	background:skyblue;
	padding: 125px 100px 70px 100px;
}
.main-search{
	display:flex;
	justify-content: center;
}
.category-list{
	height:1050px;
	background: #fafafa;
	padding-bottom:15px;
	box-sizing:border-box;
	overflow:auto; 
}
.footer{
	height:100px;
	background:gray;
}
.row{
	margin-left:50px;
	margin-right:50px;
	padding:15px 5px 5px 5px;
	background:#fafafa;
	height:100%;
	overflow:auto; 
}
.category-item{
	overflow: auto; 
	background: #fafafa;
	padding:5px;
	height:250px;
	overflow:auto; 
}
.category-title{
	font-size:18px;
	margin-left:7px;
	margin-top:10px;
}
.glyphicon-map-marker{
	margin-top:-1px;
	margin-right:10px;
	color : red;
}
.category-content{
	border:1px solid #d9d9d9;
	width:100%;
	height:100%;
}
.search-group{
	width : 350px;
}
.search-address{
	width:314px;
	height:40px;
}
.searchBtn{
	width: 60px;
	height: 40px;
	background : #ff8a00;	
	color : white;
}
.navbar-default{
	width:100%;
}
</style>
</head>
<body>
<div class="wrapper">
	<!-- Header Start -->
	<div class="header">
		<div class="header-nav">
			<img class="logo" src="" alt="로고이미지">
			<div class="navbar">
				<button class="btn btn-default nav-btn">로그인</button>
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
	<!--  Category Start -->
	<div class="category-list container-fluid">
		<div class="row">
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">전체보기</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">1인분 주문</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">프랜차이즈</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">치킨</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">피자/양식</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">중국집</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">한식</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">일식/돈까스</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">족발/보쌈</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">야식</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">분식</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">카페/디저트</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content">
					<p class="category-title">편의점</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Category End -->
	<!-- Footer Start -->
	<div class="footer">
		<div class="footer-menu">
			<nav class="navbar navbar-default">
 					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a>이용약관</a></li>
							<li><a>개인정보처리방침</a></li>
							<li><a>회원등급정책</a></li>
							<li><a>회사소개</a></li>
							<li><a>요기요사장님</a></li>
							<li><a>입점문의</a></li>
							<li><a>공지사항</a></li>
						</ul>
					<ul class="nav navbar-nav navbar-right">
		   			     <li><a href="#">Instagram</a></li>
		   			     <li><a href="#">Blog</a></li>
   			 		</ul>
   			 	</div>
			</nav>
		</div>
		<div class="footer-detail">
		</div>
	</div>
	<!-- Footer End -->
</div>
</body>
</html>