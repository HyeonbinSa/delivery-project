<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<script>
//정규식
//1. 아이디 형식 검사 (영문+숫자 14자리 )@dddd.com)
var email_check = /^[\w.\-]+@[\w.\-]+\.[A-Za-z]{2,3}$/;
//2. 비밀번호 형식 검사 (영문 + 숫자 + 특수문자, 최소 8자리, 최대 15자))
var pw_check = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,15}$/;
//3. 핸드폰번호 형식검사 (최대 숫자 11자리 )(01로 시작)
var phone_check = /^01[016789]\d{3,4}\d{4}$/;
//4. 닉네임 형식 검사 영문, 한글, 숫자 최소 3자리~ 10자
var nickname_check = /^[가-힣a-zA-Z0-9]{3,10}$/;

var email_result = false;
var pw_result = false;
var pw_confirm_result = false;
var nickname_result = false;
var phone_result = false;


$(document).ready(function(){
	// 회원가입 실패 (아이디 or 닉네임 중복)
	var result = '${result}';
	if(result ==  "both"){
		alert("중복된 아이디와 닉네임입니다.");
		phone_result = true;
	}else if(result == "duplicate_id"){
		alert("중복된 아이디입니다.");
		// 닉네임은 이상없음
		nickname_result = true;
		phone_result = true;
	}else if(result == "duplicate_nickname"){
		alert("중복된 닉네임입니다.");
		// 아이디는 문제 없음
		email_result = true;
		phone_result = true;
	}
	
	
	// 이메일 입력창 글씨 입력 감지
	$("#joinEmail").on("propertychange keyup paste", function() {
	    // 이메일 정규식에 맞는 입력 시 
		if(email_check.test($("#joinEmail").val())==true){
			// 에러 span 숨김 
			$(".id-error").hide();
			email_result = true;
		// 정규식에 맞지 않으면 error span 출력
	    }else{
	    	$(".id-error").show();
	    	email_result = false;
	    }
	});
	
	// 비밀번호 입력 감지
	$("#joinPw").on("propertychange keyup paste", function() {
		//비밀번호 정규식 검사
		if(pw_check.test($("#joinPw").val())==true){
			//통과 시 error span 숨김
			$(".pw-error").hide();
			pw_result = true;
		// 부적합 시 error span 출력 	
	    }else{
	    	$(".pw-error").show();
	    	pw_result = false;
	    }
	}); 
	// 비밀번호 확인 입력 감지
	$("#confirmPw").on("propertychange keyup paste", function() {
		// 저장한 비밀번호와 입력된 확인용비밀번호 비교
	    if(($("#joinPw").val())==($("#confirmPw").val())){
	    	// 통과시 error span 숨김 
			$(".pw-confirm-error").hide();
	    	pw_confirm_result = true;
		//부적합 시에 error span 출력
		}else{
			$(".pw-confirm-error").show();
			pw_confirm_result = false;
		}
	});
	// 닉네임 입력 감지
	$("#joinNickname").on("propertychange keyup paste", function() {
		// 닉네임 정규식 검사 
		if(nickname_check.test($("#joinNickname").val())==true){
			// 에러 span 숨김 
			$(".nickname-error").hide();
			nickname_result = true;
		// 정규식에 맞지 않으면 error span 출력
	    }else{
	    	$(".nickname-error").show();
	    	nickname_result = false;
	    }
	}); 
	// 핸드폰 번호 입력 감지 
	$("#joinPhone").on("propertychange keyup paste", function() {
		// 핸드폰 번호  정규식 검사 
		if(phone_check.test($("#joinPhone").val())==true){
			// 에러 span 숨김 
			$(".phone-error").hide();
			phone_result = true;
		// 정규식에 맞지 않으면 error span 출력
	    }else{
	    	$(".phone-error").show();
	    	phone_result = false;
	    }
	}); 
	
	
	// 회원가입 버튼 클릭 시 모든 항목 정규식 통과했는지 체크 후 post 전송
	var formObj = $(".join-form");
	
	$(".btn-join").on("click", function(){
		if(email_result == true && pw_result == true && pw_confirm_result == true && nickname_result == true && phone_result == true){
			formObj.attr("action", "/user/join");
			formObj.attr("method", "POST");
			formObj.submit();
		}else{
			alert("회원정보를 정확히 입력해주세요.");
			return;
		}
		
	});
	
});


</script>
<style>
.searchbox{
	display : none;
}
.login-container{
	padding: 50px 10px 50px 10px;
	height:630px;
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

/* error message css */
.error-span{
	margin-left:10px;
	margin-top:5px;
	margin-bottom:5px;
	color:red;
	display:none;
}

</style>
<!-- new join Start -->
<div class="login-container">
	<form class="join-form">
		<div class="login-title"><a href="/"><img class="container-logo-img" style="width:100px;"src="/images/logo-yogiyo.png" alt="로고이미지" ></a></div>
		<!-- 소셜 로그인 -->
		<div class="social-login">
			<div>SNS 계정으로도 간편하게 로그인하실 수 있습니다.</div>
			<button class="btn btn-default btn-naver" type="submit">네이버로 로그인</button>
			<button class="btn btn-default btn-kakao" type="submit">카카오로 로그인</button>
		</div>
		<!-- 회원 정보 입력 폼 시작 -->
		<div class="member-info">
			<strong>회원정보 입력</strong>
			<input type="text" class="form-control" id="joinEmail" name="member_id" <c:if test="${vo != null }">value="${vo.member_id }" </c:if>  placeholder="이메일 주소 입력(필수)">
			<span class="error-span id-error">이메일 형식이 맞지 않습니다.(ex. bendelivery@benworld.com)</span>
			<input type="password" class="form-control" id="joinPw" name="member_pw" maxlength=15 placeholder="비밀번호 입력(필수)">
			<span class="error-span pw-error">최소 8자 ~ 최대 15자의 영문,숫자,특수문자의 조합입니다.</span>
			<input type="password" class="form-control" id="confirmPw" name="confirm_pw" maxlength=15 placeholder="비밀번호 확인">
			<span class="error-span pw-confirm-error">비밀번호가 일치하지 않습니다.</span>
			<input type="text" class="form-control" id="joinNickname" name="member_nickname" <c:if test="${vo != null }">value="${vo.member_nickname }" </c:if>  placeholder="닉네임 입력(필수)">
			<span class="error-span nickname-error">한글, 숫자, 영문의 조합으로 최소 3자리입니다.</span>
		</div>
		<div class="phone-info">
			<strong>휴대폰 인증</strong>
			<input type="text" class="form-control" id="joinPhone" name="member_phone" <c:if test="${vo != null }">value="${vo.member_phone }" </c:if> maxlength=11 placeholder="휴대폰 번호 - 없이 입력(필수)">
			<span class="error-span phone-error">10자리 또는 11자리의 숫자만 입력 가능합니다.</span>
			<input type="text" class="form-control" id="validPhone" name="phone_check" maxlength=11 placeholder="인증번호 입력(필수)">
		</div>
		<button class="btn btn-default btn-join">회원가입</button>
		
	</form>
</div>
<!-- new join end -->
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>