<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<script>
//정규식

// 아이디 중복 체크 여부 (0 = 중복, 1 = no 중복)
var id_check=0;

function do_join(){
	var id = $("#member_id").val();
	var pw = $("#member_pw").val();
	var confirm_pw = $("#confirmpassword").val();
	var nickname = $("#member_nickname").val();
	var phone = $("#member_phone").val();
	
	
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
.join-form{
	margin-right:187px;
	margin-left:187px;
	height:100%;
}
.btn-join{
	width: 100%;
    height: 40px;
    border-radius: 0;
    background-color: #f0001e;
    font-size: 15px;
    color: #FFF;
    margin-top: 7px;
}
.login-title{
	height:40px;
	margin-top:5px;
	text-align:center;
}
.login-extra > span{
	margin-top : 5px;
	float:right;
	color:#999;
	font-size:13px;
	margin-right:2px;
	margin-left:1px;
}
.join-form > .member-info > input{
	margin-bottom : 5px;
}
.join-form > .phone-info > input{
	margin-bottom : 5px;
}
.social-login{
	width:100%;
	height:70px;
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
.category-nav{
	display:none;
}
</style>
<!-- new join Start -->
<div class="login-container">
	<form class="join-form" method="post" action="/user/loginPost">
		<div class="login-title"><a href="/">로긴 타이틀+로고</a></div>
		<!-- 소셜 로그인 -->
		<div class="social-login">
			<div>SNS 계정으로도 간편하게 로그인하실 수 있습니다.</div>
			<button class="btn btn-default btn-naver" type="submit">네이버로 로그인</button>
			<button class="btn btn-default btn-kakao" type="submit">카카오로 로그인</button>
		</div>
		<!-- 회원 정보 입력 폼 시작 -->
		<div class="member-info">
			<strong>회원정보 입력</strong>
			<input type="text" class="form-control" id="joinEmail" name="member_id" placeholder="이메일 주소 입력(필수)">
			<input type="password" class="form-control" id="joinPw" name="member_pw" placeholder="비밀번호 입력(필수)">
			<input type="password" class="form-control" id="confirmPw" name="confirm_pw" placeholder="비밀번호 확인">
			<input type="text" class="form-control" id="joinNickname" name="member_nickname" placeholder="닉네임 입력(필수)">
		</div>
		<div class="phone-info">
			<strong>휴대폰 인증</strong>
			<input type="text" class="form-control" id="joinPhone" name="member_phone" placeholder="휴대폰 번호(필수)">
			<input type="text" class="form-control" id="validPhone" name="phone_check" placeholder="인증번호 입력(필수)">
		</div>
		<button class="btn btn-default btn-join" type="submit">회원가입</button>
		
	</form>
</div>
<!-- new join end -->
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>