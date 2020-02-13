<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<script>
</script>
<style>
.mypage-container{
	margin : 0px 50px;
	background : aliceblue;
}
</style>
<div class="mypage-container">
	<div class="user-info">
		<div class="user-level"></div>
		<div class="user-nickname">${login.member_nickname }</div>
	</div>
	<div class="user-info-menu">
		<div class="user-like"></div>
		<div class="user-coupon"></div>
		<div class="user-review"></div>
		<div class="user-order"></div>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>