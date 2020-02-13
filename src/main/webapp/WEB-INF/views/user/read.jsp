<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<style>

.searchbox{
	height:100px;
	padding-top:30px;
	padding-bottom:30px;
	
}
.logo-thubmnail{
	height:70px;
	width:70px;
	background:pink;
	margin:14px;
}
/*상단 카테고리별 네비바 관련 CSS */
.category-nav{
	height:60px;
	width:100%;
	vertical-align: middle;
}
.category-nav-ul{
	float:none;
	display:inline-block;
}
.category-collapse{
	float:none;
	text-align:center;
}
.category-nav-ul > li{
	margin-left : 5px;
	vertical-align: middle;
	display:inline;
}
.list-container > .row{
	height : 100%;
}

.res-search{
	margin-top:10px;
	height:30px;
}
/* 상단 카테고리별 네비바 관련 CSS end */

/* restaurant 상세 페이지 css start*/
/* restaurant information*/
.detail-container{
	width:100%;
	overflow:auto;
	background:pink;
}
.restaurant-detail{
	width:1024px;
	margin: 10px auto;
	background : gray;
	positon:relative;
}
.restaurant-content{
	background:yellow;
	padding-left:10px;
	padding-right:10px;
}
.restaurant-info{
	border : 1px solid #d9d9d9;
}
.restaurant-name{
	padding:10px;
	font-size:17px;
}
.order-content{
	background: aliceblue;
}
.restaurant-detail-info{
	border-top : 1px solid #d9d9d9;
	border-bottom : 1px solid #d9d9d9;
}
.owner-intro-message{
	width:100%;
	padding:13px;
	overflow: hidden;
	text-overflow: ellipsis;
}
.owner-message-title{
	float:left;
	width:10%;
	margin-right:10px;
}
.owner-message{
	float:left;
	width:85%;
	overflow: hidden;
	text-overflow: ellipsis;
}

/* restaurant other information */
.other-info{
	margin-top:10px;
	border : 1px solid #d9d9d9;
}
.pannel{
	widthd:100%;
	background:aliceblue;
}
.photo-menu{
	height:200px;
	background:aquamarine;
}
/* restaurant 상세 페이지 css end */
</style>

<div class="detail-container">
	<div class="restaurant-detail">
		<div class="restaurant-content col-md-8"><!-- 8:4 중 8 -->
			<div class="restaurant-info">
				<div class="restaurant-name">레스토랑 이름</div>
				<div class="restaurant-detail-info">
					<table class="res-table">
					<tr>
						<td class="res-table-logo">
							<div class="logo-thubmnail"></div>
						</td>
						<td class="res-table-info">
							<div class="res-review" style="font-size:13px"><span>별점5.0</span></div>
							<div class="order-info" style="font-size:13px"><span>최소주문금액</span><span>13500이상 배달</span></div>
							<div class="pay-info" style="font-size:13px"><span>결제 </span><span>신용카드</span></div>
							<div class="delivery-info" style="font-size:13px"><span>배달시간 </span><span>50~60분</span></div>
						</td>
						<td>
						</td>
					</tr>	
				</table>
				</div>
				<div class="owner-intro-message">
					<strong class="owner-message-title">사장님알림 </strong><span class="owner-message"> dlsdlsllslsassssssssssdlsllslsassssssssssdlsllslsasssssssssssssssssssdllfaldfdlsllslsassssssssssdlsllslsassssssssssdlsllslsassssssssssdlsllslsassssssssss</span>
				</div>
			</div>
			<!-- 아래 들어갈 패널 -->
			<div class="other-info">
				<ul class="nav nav-tabs nav-justified other-list "><!-- 네비게이션바 탭형으로 -->
					<li>메뉴</li>
					<li>리뷰</li>
					<li>정보</li>		
				</ul>
				<div class="pannel menu-pannel">
					<div class="photo-menu">포토메뉴의 위치</div>
					<div class="toggle-menu"></div>
				</div>
				<div class="pannel review-panner">b</div>
				<div class="pannel information-panner">c</div>
			</div>
		</div>
		<div class="order-content col-md-4">
			<div class="order-title"><strong>주문표</strong></div>
			<ul class="order-list">
					
			</ul>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>
