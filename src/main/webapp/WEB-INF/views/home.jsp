<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<h1>
	${login.member_id } - Hello world! !!!
</h1>
<style>
category-title {
    position: absolute;
    top: 7%;
    left: 7%;
    color: #333;
    font-size: 110%;
    font-weight: bold;
}
.category-list .col-xs-6, .category-list .col-sm-4, .category-list .col-md-3, .category-list .col-lg-3 {
    padding-left: 5px;
    padding-right: 5px;
}
.footer {
    background: #FBFBFB;
    padding-bottom: 65px;
    font-size: 12px;
    color: #999;
}
</style>
<P>  The time on the server is ${serverTime}. </P>
<div class="container">
	<div class="row">
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">ddd</div>
		
	</div>	
</div>
<div class="category-list">
	<div class="row">
	<!-- ngRepeat: banner in banner_list -->
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
			<a href="../user/list" class="thumbnail">
				<div class="category-title">전체보기</div>
				<img src="../home_files/category-01.png">
			</a>
		</div>
		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
			<a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
				<div class="category-title">1인분 주문</div>
				<img src="./home_files/category-onedish.png">
			</a>
		</div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="../user/list" class="thumbnail" >
		<div class="category-title">프랜차이즈</div><img src="/image/home_files/category-10.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">치킨</div><img src="./home_files/category-02.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">피자/양식</div><img src="./home_files/category-03.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">중국집</div><img src="./home_files/category-04.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">한식</div><img src="./home_files/category-05.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">일식/돈까스</div><img src="./home_files/category-06.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">족발/보쌈</div><img src="./home_files/category-07.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">야식</div><img src="./home_files/category-08.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">분식</div><img src="./home_files/category-09.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">카페/디저트</div><img src="./home_files/category-11.png"></a></div>
		<div class="col-xs-6 col-sm-4 col-md-3"><a href="https://www.yogiyo.co.kr/mobile/" class="thumbnail" >
		<div class="category-title">편의점</div><img src="./home_files/category-convenience-store.png"></a></div>
	</div>
</div>
<footer class="footer">
		<div class="footer-inner">
			<div class="info"></div>
		</div>
	</footer>
</body>
</html>
