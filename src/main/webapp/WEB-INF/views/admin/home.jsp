<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header2.jsp" %>
<style>
.home-content{
	width:100%;
	height:100%;
	background: #fff;
	border:1px solid #fafafa;
	overflow:auto;
}
.first-content{
	width:100%;
	margin:0px;
	padding:0px;
	height:300px;
}
.home-advertise{
	background : pink;
	height : 300px;
}
.home-login{
	background : #fff;
	height : 300px;
	padding-top : 60px;
	padding-bottom : 60px;
}
.form-control{
	margin : 5px 0px;
}
.login-extra > span {
	color : #999;
	float : right;
}
.login-extra{
	margin-top : 5px;
}
.btn-login{
	border: none;
    background-color: #DC1400;
    width: 100%;
    height: 54px;
    color: #FFF;
    font-size: 14px;
    font-weight: bold;
    margin-top: 10px;
}
.btn-join{
	border: 1px solid #DC1400;
    background-color: #FFF;
    width: 100%;
    height: 54px;
    color: #DC1400;
    font-size: 14px;
    font-weight: bold;
    margin-top: 10px;
}
.second-content{
	margin:0px;
	padding:0px;
	height:300px;
	width : 100%;
}
.second-menu{
	padding:20px;
	
}
.home-menu-item{
	background:aliceblue;
	padding:3px;
	border: 1px solid #999;
	height:100px;
}
.home-menu{
	margin:0px;
	padding:0px;
}
</style>
<!-- admin home page -->
	<div class="home-content">
	<!-- 1열 content -->
		<div class="first-content row">
			<div class="home-menu col-md-8 row">
				<div class="home-menu-item col-md-4">d</div>
				<div class="home-menu-item col-md-4">d</div>
				<div class="home-menu-item col-md-4">d</div>
				<div class="home-menu-item col-md-4">d</div>
				<div class="home-menu-item col-md-4">d</div>
				<div class="home-menu-item col-md-4">d</div>
				<div class="home-menu-item col-md-4">d</div>
				<div class="home-menu-item col-md-4">d</div>
				<div class="home-menu-item col-md-4">d</div>
			</div>
			<!-- 로그인 구역 -->
			<div class="home-login col-md-4"> 
				<form class="login-form" action="/admin/login" method="post">
				<c:if test="${admin_login == null}">
					<input type="text" class="form-control" name="admin_id" placeholder="아이디 입력">
					<input type="password" class="form-control" name="admin_pw" placeholder="비밀번호 입력">
					<div class="login-extra">
						<label class="auto-login"><input class="check-auto" type="checkbox"> 자동 로그인</label>
						<span>아이디 찾기</span><span> | </span><span> 비밀번호 찾기</span>
					</div>
					<button class="btn btn-default btn-login" type="submit">로그인</button>
				</c:if>	
				</form>
				<c:if test="${admin_login != null}">
					<div class="admin-name">
						<div style="font-size:15px;text-align:center;"><strong>${admin_login.admin_id }</strong><span>접속 중</span></div>
					</div>
					<button class="btn btn-default btn-login" onclick="location.href='/admin/mypage'">My Page</button>
					<button class="btn btn-default btn-login" onclick="location.href='/admin/logout'">로그아웃</button>
				</c:if>
			</div>
		</div>
		<div class="second-content row">
			<div class="second-menu col-md-4">벤 딜리버리 입점 신청</div>
			<div class="second-menu col-md-4">d</div>
			<div class="second-menu col-md-4">d</div>
			
		</div>
	</div>
	
<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>