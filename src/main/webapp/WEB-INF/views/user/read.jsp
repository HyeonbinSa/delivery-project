<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>
.form-inline, .form-group{
	margin:5px;
}
.container{
 padding :10px;
}
.res_detail{
	margin : 10px;
	border: 1px solid red;
}
.res-logo, res-title, .container, .order, div{
	border: 1px solid grey;
}
.res-title, .res-content{
	padding:10px;
}
.res-info{
	border: 1px solid pink;
}
.col-md-8{
	border: 1px solid blue;
}
.col-md-4{
	border: 1px solid yellow;
}
</style>
<nav class="navbar navbar-default">
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav nav-tabs nav-justified">
	<li role="presentation"><span class="glyphicon glyphicon-search"></span></li>
	<li role="presentation"><a href="#">전체보기</a></li>
	<li role="presentation"><a href="#">1인분</a></li>
	<li role="presentation"><a href="#">프렌차이즈</a></li>
	<li role="presentation"><a href="#">치킨</a></li>
	<li role="presentation"><a href="#">피자/양식</a></li>
	<li role="presentation"><a href="#">중국집</a></li>
	<li role="presentation"><a href="#">한식</a></li>
	<li role="presentation"><a href="#">일식/돈까스</a></li>
	<li role="presentation"><a href="#">족발/보쌈</a></li>
	<li role="presentation"><a href="#">분식</a></li>
	<li role="presentation"><a href="#">카페/디저트</a></li>
	<li role="presentation"><a href="#">편의점</a></li>
	</ul>
  </div>
</nav>
<!-- 식당 상세 페이지 start -->
<div class="container">
	<div class="res_detail">
		<!-- 식당 정보 -->	
		<div class="col-md-8 col-xs-12">
			<div class="res-info row">
				<div class="res-title"><span>${resVO.res_name}</span></div>
				<div class="res-content">
					<div class="res-logo col-md-3">logo</div>
					<div class="res-title col-md-9">
						<ul>
							<li>별점 5.0</li>
							<li>최수주문 금액 : 15000</li>
							<li>결제</li>
							<li>배달시간</li>
							<li>일회용품</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 주문표 -->
		<div class="col-md-4 col-xs-6">
		<form>
			<div class="order-title"><span>주문</span></div>
			<div class="cart">주문내역추가할 곳</div>
			<div>배달비</div>
			<button type="submit">주문하기</button>
		</form>
		</div>
	
		<br>
		<hr>
		
		</div>
	</div>
</body>
</html>