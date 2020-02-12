<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/owner_header.jsp" %>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/resources/css/yogiyo.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- register start -->
<div>
<form method="post">
	<table>
	<tr>
		<th>사업자 번호</th>
		<td><input type="text" name="owner_number"></td>
	</tr>
	<tr>
		<th>휴대폰 번호</th>
		<td><input type="text" name="owner_phone"></td>
	</tr>
	</table>
	<button type="submit">다음</button>
</form>
</div>

</body>
</html>