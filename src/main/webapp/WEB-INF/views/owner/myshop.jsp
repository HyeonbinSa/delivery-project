<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
.ceo-wrapper {
    position: relative;
}
.owner-wrapper {
    min-width: 1235px;
    width: 1235px;
    margin: 116px auto 0;
    box-shadow: inset 200px 0 #fff;
}

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
    list-style: none;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
</style>
<body>
<div class="wrapper">
	<!-- Owner header start -->
	<div class="owner">
		<header class="header">
			<div class="owner-info">
				<ul class="owner-info-menu">
					<li><span>이름</span></li>
					<li><span>고객센터</span></li>
					<li><span>로그아웃</span></li>
				</ul>
			</div>
			<div class="header-inner">
				<a>logo</a>
			</div>
			<nav class="nav">
				<ul class="nav-left">
					<li><a>우리 가게 관리</a></li>
					<li class="division"><a>광고관리 </a></li>
					<li><a>사장님 꿀팁</a></li>
					<li><a>제휴 혜택</a></li>
				</ul>
			</nav>
		</header>
	</div>
	<!-- Owner header end -->
	<div class="owner-wrapper">
		<nav class="side-navigation">
			<ul>
				<li><a>가게 운영</a>
					<ul class="inside-navigation">
						<li><a>메뉴 관리</a></li>
						<li><a>메뉴 품절</a></li>
						<li><a>정보 수정 요청</a></li>
						<li><a>영업 임시 중지</a></li>
						<li><a>운영 정보</a></li>
						<li><a>통계</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<main><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>dd<br><br><br><br><br><br>s
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>dd<br><br><br><br><br><br>s
		</main>
	</div>
	<footer class="footer">
		<div class="footer-inner">
			<div class="info"></div>
		</div>
	</footer>
</div>
</body>
</html>