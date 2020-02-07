<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
<!-- join start -->
<div class="join-wrap ng-scope">
	<form method="post" class="ng-pristine ng-invalid ng-invalid-requried ng-valid-pattern">
	<div class="member-i">	
	<strong class="tit ng-binding">회원정보 입력</strong>
		<ul class="list-group">
			<li class="list-group-item">
				<input type="text" placeholder="(필수)이메일 주소 입력" name="member_id" >
				<span id="valid_email" style="display:none;color:red;">이메일 형식이 유효하지 않습니다.</span>
			</li>
			<li class="list-group-item">
				<input type="password" placeholder="(필수)비밀번호 입력 / 대소문자와 숫자 4~12자" name="member_pw" >
				<span id="valid_pw" style="display:none;">비밀번호 형식이 유효하지 않습니다.</span>
			</li>
			<li class="list-group-item">
				<input type="password" placeholder="(필수)비밀번호 재확인" name="confirmpassword" >
				<span id="confirm_pw" style="display:none;color:green;">비밀번호가 일치합니다.</span>
				<span id="not_confirm_pw">비밀번호가 일치하지 않습니다.</span>
			</li>
			<li class="list-group-item">
				<input type="text" placeholder="(필수)닉네임 입력" name="member_nickname" >
			</li>
			</ul>
			<div class="phone-v">
				<strong class="tit">휴대폰 번호</strong>
				<ul class="list-group">
					<li class="list-group-item">
						<input type="text" placeholder="(필수)휴대폰 번호 입력(-제외)" name="member_phone" >
						<span class="valid_phone" style="display:none;">핸드폰 번호의 형식이 유효하지 않습니다.</span>
					</li>
				</ul>
			</div>
		</div>
	<button class="btn btn_join" type="submit" onclick="do_join">회원가입 완료</button>
	</form>
</div>

</body>
</html>