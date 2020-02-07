<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/resources/css/yogiyo.css">
<script src="/resources/js/addressapi.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
var result = "${result}";
if(result == "already"){
	alert("이미 회원가입이 되어있습니다.");
}else if(result == "complete"){
	alert("회원가입이 완료되었습니다.");
}
</script>

</body>
</html>