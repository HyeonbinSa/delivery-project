<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<style>
	.category-nav{
		display:none;
	}
	.category-list{
		padding :0px 100px;
	}
	.category-content{
		width:270px;
		height:230px;
		background-size:cover;
	}
	
</style>
	<!--  Category Start -->
	<div class="category-list container-fluid">
		<div class="row">
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-01.png')" onclick="location.href='/user/list'">
					<p class="category-title">전체보기</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-onedish.png')" onclick="location.href='/user/list/1인분'">
					<p class="category-title">1인분 주문</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-10.png')" onclick="location.href='/user/list/프랜차이즈'">
					<p class="category-title">프랜차이즈</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-02.png')" onclick="location.href='/user/list/치킨'">
					<p class="category-title">치킨</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-03.png')" onclick="location.href='/user/list/피자양식'">
					<p class="category-title">피자/양식</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-04.png')" onclick="location.href='/user/list/중국집'">
					<p class="category-title">중국집</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-05.png')" onclick="location.href='/user/list/한식'">
					<p class="category-title">한식</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-06.png')" onclick="location.href='/user/list/일식돈까스'">
					<p class="category-title">일식/돈까스</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-07.png')" onclick="location.href='/user/list/족발보쌈'">
					<p class="category-title">족발/보쌈</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-08.png')" onclick="location.href='/user/list/야식'">
					<p class="category-title">야식</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-09.png')" onclick="location.href='/user/list/분식'">
					<p class="category-title">분식</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-11.png')" onclick="location.href='/user/list/카페디저트'">
					<p class="category-title">카페/디저트</p>
				</div>
			</div>
			<div class="category-item col-xs-6 col-sm-4 col-md-3">
				<div class="category-content" style="background-image:url('/images/category-convenience-store.png')" onclick="location.href='/user/list/편의점'">
					<p class="category-title">편의점</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Category End -->
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>