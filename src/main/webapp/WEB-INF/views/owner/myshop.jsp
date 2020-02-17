<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/owner_header2.jsp" %>
<style>
.home-content{
	width:100%;
	height:100%;
	border:1px solid #fafafa;
	overflow:auto;
}
.top-content{
	margin-top : 10px;
	margin-left : 5%;
	margin-right : 5%;
}
.owner-name{
	margin : 10px;
	font-size : 40px;
}
.owner-menu{
	padding : 0px;
	margin : 0px;
	background : #fff;
}
.menu-item{
	text-align : center;
	padding : 15px;
}
.menu-title{
	font-size : 20px;
}
.icon {
	margin : 8px;
	font-size : 30px;
}
.item-wrap{
	padding : 10px;
	border : 1px solid #999;
	background : #fafafa;
}
</style>
	<div class="home-content">
		<div class="top-content">
			<span class="owner-name">${resVO.res_name} - ${owner_login.owner_name}</span><span>사장님, <strong>어서오세요.</strong></span>
		</div>
		<hr>
		<div class="middle-content">
			<div class="owner-menu row">
				<div class="menu-item col-md-4" onclick="location.href='/owner/operation'">
					<div class="item-wrap">
						<span class="glyphicon glyphicon-edit icon"></span>
						<div class="menu-title" >가게 정보</div>
					</div>
				</div>
				<div class="menu-item col-md-4">
					<div class="item-wrap">
					<span class="glyphicon glyphicon-calendar icon"></span>
					<div class="menu-title">운영 정보</div>
					</div>
				</div>
				<div class="menu-item col-md-4" onclick="location.href='/owner/menus'">
					<div class="item-wrap">
						<span class="glyphicon glyphicon-list-alt icon"></span>
						<div class="menu-title">메뉴 관리</div>
					</div>
				</div>
				<div class="menu-item col-md-4">
					<div class="item-wrap">
						<span class="glyphicon glyphicon-time icon"></span>
						<div class="menu-title">영업 관리</div>
					</div>
				</div>
				<div class="menu-item col-md-4">
					<div class="item-wrap">
						<span class="glyphicon glyphicon-volume-up icon"></span>
						<div class="menu-title">사장님 공지/한마디</div>
					</div>
				</div>
				<div class="menu-item col-md-4">
					<div class="item-wrap">
						<span class="glyphicon glyphicon-thumbs-up icon"></span>
						<div class="menu-title">리뷰 관리</div>
					</div>
				</div>
				<div class="menu-item col-md-4">
					<div class="item-wrap">
						<span class="glyphicon glyphicon-signal icon"></span>
						<div class="menu-title">통계</div>
					</div>
				</div>
								
			</div>
		</div>
	</div>
	
<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>