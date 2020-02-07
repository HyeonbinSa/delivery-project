<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/owner_header.jsp" %>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/resources/css/yogiyo.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
var result = "${result}";
if(result == "create"){
	alert("회원가입을 진행합니다.");
}

</script>
<!-- register start -->
<div>
<form method="post">
<input type="hidden" value="${vo.owner_no }">
	<table>
	<tr>
		<th>사업자 번호</th>
		<td><input type="text" name="owner_number" readonly="readonly" value="${vo.owner_number }"></td>
	</tr>
	<tr>
		<th>휴대폰 번호</th>
		<td><input type="text" name="owner_phone" readonly="readonly" value="${vo.owner_phone }"></td>
	</tr>
	<tr>
		<th> ID </th>
		<td><input type="text" name="owner_id"></td>
	</tr>
	<tr>
		<th>Password</th>
		<td><input type="password" name="owner_pw"></td>
	</tr>
	</table>
	<button type="submit">회원 가입</button>
</form>
</div>

</body>
</html>