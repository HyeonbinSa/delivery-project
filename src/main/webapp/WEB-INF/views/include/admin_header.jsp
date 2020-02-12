<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
</head>
<style>
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
</style>
<style>
body {
    font-size: 15px;
    line-height: 1.4;
    color: #212329;
    background: #eceef2;
    font-family: 'Roboto', 'Noto Sans KR', sans-serif, '돋움', 'Dotum', helvetica;
}
.header {
    position: fixed;
    top: 0;
    width: 100%;
    background-color: #fff;
    box-shadow: 0 -1px 0 0 inset #eceef2 !important;
    z-index: 1000;
}
.header .owner-info {
    margin: 18px auto 0;
    width: 1208px;
    height: 20px;
}
header .owner-info .owner-info-menu {
    float: right;
}
@media (max-width: 1235px)
.owner-wrapper {
    position: relative;
}
.owner-wrapper {
    min-width: 1235px;
    width: 1235px;
    margin: 109px auto 0;
    box-shadow: inset 200px 0 #fff;
}
.side-navigation > ul > li > a {
    position: relative;
    display: block;
    padding: 18px 39px 18px 16px;
    font-size: 18px;
    line-height: 1.33;
    letter-spacing: -0.4px;
    color: #212329;
}
.side-navigation > ul > li > ul >li {
    position: relative;
    display: block;
    padding: 10px 10px 18px 16px;
    font-size: 18px;
    line-height: 1.33;
    letter-spacing: -0.4px;
    color: #212329;
}
.header .owner-info .owner-info-menu li {
    position: relative;
    display: inline-block;
    font-size: 14px;
    color: #8e929f;
    letter-spacing: -0.4px;
}
.header .owner-info .owner-info-menu li span {
    margin: 0 8px 0;
    display: inline-block;
    vertical-align: middle;
}
.header .header-inner .logo {
    display: block;
    margin: 0 0 16px;
    width: 200px;
    height: 24px;
}
.header .header-inner {
    position: relative;
    margin: 0 auto;
    width: 1208px;
}
.header .nav {
    position: relative;
}
.header .nav .nav-left li > a {
    display: block;
    margin-right: 24px;
    padding: 5px 4px 8px 0;
    line-height: 1.38em;
    font-weight: 400;
    font-size: 16px;
    letter-spacing: -0.4px;
    color: #666a75;
}
.header .nav .nav-left .division {
    margin-right: 10px;
}
.header .nav > ul > li {
    float: left;
    position: relative;
}
.side-navigation {
    float: left;
    width: 200px;
    min-height: 947px;
    color: #212329;
    background: #fff;
    font-size: 17px;
    margin-right: 53px;
}
.side-navigation .inside-navigation {
    margin-bottom: 1px;
}
.footer {
    position: relative;
    bottom: 0;
    overflow: hidden;
    padding: 32px 0 35px;
    width: 100%;
    min-width: 1235px;
    font-size: 12px;
    font-weight: 300;
    background-color: #fff;
    border-top: 1px solid #d7dbe6;
}
.footer .footer-inner {
    position: relative;
    width: 1235px;
    margin: 0 auto;
}
.footer .footer-inner .info {
    position: relative;
    color: #8e929f;
    font-size: 12px;
    margin: auto 0;
}
ol, ul {
    list-style-type: none;
}
ul {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.main-content {
    float: left;
    position: relative;
    width: 960px;
    z-index: 10;
}
.logo {
 background-image: url( "images/logo-yogiyo.png" );
}
</style>

<body>
<div class="wrapper">
	<!-- Owner header start -->
	<div class="owner">
		<header class="header">
			<div class="owner-info">
				<ul class="owner-info-menu">
					<li><strong><span>${admin_login.admin_id }</span></strong>님</li>
					<c:if test="${admin_login !=null }">
						<li><a href="../admin/logout"><span>로그아웃</span></a></li>
					</c:if>
					<c:if test="${admin_login == null }">
						<li class="login-li"><a href="../admin/login"><span>로그인</span></a></li>
					</c:if>
				</ul>
			</div>
			<div class="header-inner">
				<a href="../admin/home">Admin Page</a>
			</div>
			<nav class="nav">
				<ul class="nav-left">
					<li><a>가게 현황 관리</a></li>
					<li class="division"><a>광고관리</a></li>
					<li><a>회원 관리</a></li>
					<li><a>이벤트 관리</a></li>
				</ul>
			</nav>
		</header>
	</div>
	<!-- Owner header end -->
	<div class="owner-wrapper">
		<nav class="side-navigation">
			<ul>
				<li ><a href="../admin/list">가게 관리</a>
				<li><a href="../admin/newlist">입점 신청 현황</a></li>
				<li><a>가게 정보 수정</a></li>
				<li><a>메뉴 수정</a></li>
				<li><a>영업 임시 중지</a></li>
				<li><a href="../admin/list">회원 관리</a></li>
			</ul>
		</nav>