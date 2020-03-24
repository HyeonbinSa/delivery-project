<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header2.jsp" %>
<script>
var result = "${result}";
if(result == "already"){
	alert("이미 회원가입이 되어있습니다.");
}else if(result == "complete"){
	alert("회원가입이 완료되었습니다.");
}
</script>
<style>
.searchbox{
	display : none;
}
.login-container{
	padding: 50px 10px 50px 10px;
	height:560px;
}
.login-form{
	margin-right:187px;
	margin-left:187px;
	height:100%;
}
.btn-login{
	width: 100%;
    height: 40px;
    border-radius: 0;
    background-color: #f0001e;
    font-size: 15px;
    color: #FFF;
    margin-top: 7px;
}
.login-title{
	height:70px;
	margin-top:5px;
	text-align:center;
	margin-bottom:10px;
}
.login-extra > span{
	margin-top : 5px;
	float:right;
	color:#999;
	font-size:13px;
	margin-right:2px;
	margin-left:1px;
}
.auto-login{
	margin-top : 5px;
	
}
.login-form > input{
	margin-bottom : 5px;
}
.social-login{
	width:100%;
	height:50px;
	margin-top:10px;
}
.btn-naver{
	float : left;
	heigh : 40px;
	width : 47%;
	margin-right: 3%;
}
.btn-kakao{
	float : right;
	heigh : 40px;
	width : 47%;
	margin-left: 3%;
}
.haveid{
	margin-top:20px;
	text-align:center;
}
.category-nav{
	display:none;
}
/* error message css */
.error-span{
	margin-left:10px;
	margin-top:5px;
	margin-bottom:5px;
	color:red;
	display:none;
}
</style>


<!-- new Login Start -->
<div class="login-container">
	<form class="login-form" method="post">
		<div class="login-title"><a href="/"><img class="container-logo-img" style="width:100px;"src="/images/new_logo.png" alt="로고이미지" ></a></div>
		<!-- 입력폼 시작 -->
		<input type="text" class="form-control" id="loginEmail" name="admin_id" placeholder="아이디 입력">
		<input type="password" class="form-control" id="loginPw" name="admin_pw" placeholder="비밀번호 입력">
		<div class="login-extra">
		<label class="auto-login"><input class="check-auto" type="checkbox"> 자동 로그인</label>
		<span>아이디 찾기</span><span> | </span><span> 비밀번호 찾기</span>
		</div>
		<button class="btn btn-default btn-login" type="submit">로그인</button>
	</form>
</div>
<!-- new Login end -->
<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>