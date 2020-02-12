<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<style>

.searchbox{
	height:100px;
	padding-top:30px;
	padding-bottom:30px;
	
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
</style>

<div class="detail-container">
	<div class="restaurant-detail">
		<div class="restaurant-content"><!-- 8:4 중 8 -->
			<div class="restaurant-info">
				<div class="restaurant-name"> </div>
				<div class="restaurant-detail-info"></div>
				<div class="owner-intro-message"></div>
			</div>
			<div class="other-info">
				<ul><!-- 네비게이션바 탭형으로 -->
					<li>메뉴</li>
					<li>리뷰</li>
					<li>정보</li>
				</ul>
				<!-- 아래 들어갈 패널 -->
			</div>
		</div>
		<div class="order-content"></div>
	</div>

</div>

<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>
