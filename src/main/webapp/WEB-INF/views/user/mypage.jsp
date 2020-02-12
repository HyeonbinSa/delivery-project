<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<div class="container">
<script>
alert("${login.member_id}");
</script>
<h1>${login.member_id }</h1>
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>