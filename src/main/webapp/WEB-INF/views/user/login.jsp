<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
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
	height:40px;
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
<script>
//정규식
//1. 아이디 형식 검사 (영문+숫자 14자리 )@dddd.com)
var email_check = /^[\w.\-]+@[\w.\-]+\.[A-Za-z]{2,3}$/;
// 회원가입 완료 후 로그인 창 이동 
var result = '${result}';
if(result ==  "success"){
	alert("회원가입이 완료되었습니다.");
}
$(document).ready(function(){
	// 이메일 입력창 글씨 입력 감지
	$("#loginEmail").on("propertychange keyup paste", function() {
	    // 이메일 정규식에 맞는 입력 시 
		if(email_check.test($("#loginEmail").val())==true){
			// 에러 span 숨김 
			$(".id-error").hide();
			email_result = true;
		// 정규식에 맞지 않으면 error span 출력
	    }else{
	    	$(".id-error").show();
	    	email_result = false;
	    }
	});
	
});

</script>

<!-- new Login Start -->
<div class="login-container">
	<form class="login-form" method="post" action="/user/loginPost">
		<div class="login-title"><a href="/"><img class="container-logo-img" style="width:100px;"src="/images/logo-yogiyo.png" alt="로고이미지" ></a></div>
		<!-- 입력폼 시작 -->
		<input type="text" class="form-control" id="loginEmail" name="member_id" placeholder="이메일 주소 입력(필수)">
		<span class="error-span id-error">이메일 형식이 맞지 않습니다.(ex. bendelivery@benworld.com)</span>
		<input type="password" class="form-control" id="loginPw" name="member_pw" placeholder="비밀번호 입력(필수)">
		<div class="login-extra">
		<label class="auto-login"><input class="check-auto" type="checkbox"> 자동 로그인</label>
		<span>아이디 찾기</span><span> | </span><span> 비밀번호 찾기</span>
		</div>
		<button class="btn btn-default btn-login" type="submit">로그인</button>
		<div class="social-login">
		<button class="btn btn-default btn-naver" type="submit">네이버로 로그인</button>
		<button class="btn btn-default btn-kakao" type="submit">카카오로 로그인</button>
		</div>
		<!-- 회원가입 -->
		<div class="haveid">
			<span>요기요가 처음이신가요? </span><span id="join" onclick="location.href='/user/join'" style="color: #ff333a">이메일 회원가입</span>
		</div>
	</form>
</div>
<!-- new Login end -->
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>