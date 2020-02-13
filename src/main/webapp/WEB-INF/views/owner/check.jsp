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
.check-content{
	width :60%;
	margin : auto 5px;
}
.register-check-title{
	text-align : center;
}
.check-form{
	text-align : center;
	padding : 20px 10%;
}
.form-control{
	margin : 10px 0px;
}
.btn-check{
	border: none;
    background-color: #DC1400;
    width: 100%;
    height: 54px;
    color: #FFF;
    font-size: 14px;
    font-weight: bold;
    margin-top: 10px;
}
strong{
	text-align: left;
	font-size : 17px;
}
</style>
<!-- register start -->
<div class="home-content">
	<div class="register-check-title"><h2>입점 신청 확인</h2></div>
	<div class="check-form">
		<form method="post">
				<strong>사업자 등록 번호</strong>
				<input type="text" class="form-control" name="owner_number">
				<strong>사업자 핸드폰 번호</strong>
				<input type="text" class="form-control" name="owner_phone">
			<button class="btn-check" type="submit">다음</button>
		</form>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>