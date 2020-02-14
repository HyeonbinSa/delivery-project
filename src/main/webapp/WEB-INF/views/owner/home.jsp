<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/owner_header2.jsp" %>
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
	height : 300px
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
.join-ex{
	font-size:12px;
	color : #999;
	margin-top : 5px;
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
</style>
	<div class="home-content">
		<div class="first-content row">
			<div class="home-advertise col-md-8">ㄴ 
			</div>
			<div class="home-login col-md-4"> 
				<form class="login-form" action="/owner/login" method="post">
					<input type="text" class="form-control" name="owner_id" placeholder="아이디 입력">
					<input type="password" class="form-control" name="owner_pw" placeholder="비밀번호 입력">
					<div class="login-extra">
						<label class="auto-login"><input class="check-auto" type="checkbox"> 자동 로그인</label>
						<span>아이디 찾기</span><span> | </span><span> 비밀번호 찾기</span>
					</div>
					<button class="btn btn-default btn-login" type="submit">로그인</button>
				</form>	
					<button class="btn btn-default btn-join" onclick="location.href='/owner/check'">회원가입 인증</button>
					<span class="join-ex">입점 신청 후 첫 방문이신 사장님께서는 회원가입 인증을 통해 입점을 완료해주세요.</span>
			</div>
		</div>
		<div class="second-content row">
			<div class="second-menu col-md-4">벤 딜리버리 입점 신청</div>
			<div class="second-menu col-md-4">d</div>
			<div class="second-menu col-md-4">d</div>
			
		</div>
	</div>
	
<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>