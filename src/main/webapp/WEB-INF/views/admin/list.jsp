<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/owner_header.jsp" %>
<section class="res-list-cont"></section>
<style>
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
</style>
<div class="container">
<h1>입점 신청 목록</h1>	
<table class="table table-striped">
<colgroup>
<col style="width:10%">
<col style="width:25%">
<col style="width:25%">
<col style="width:30%">
<col style="width:10%">
</colgroup>
	<tr>
		<th>번호
		</th>
		<th>식당명
		</th>
		<th>카테고리
		</th>
		<th>입점 신청일 
		</th>
		<th>입점 결과 
		</th>
	</tr>
	<tbody>
	<c:forEach items="${list }" var="resVO">
		<tr>
			<td><a href="/admin/read?res_no=${resVO.res_no}">${resVO.res_no }</a>
			</td>
			<td>${resVO.res_name }
			</td>
			<td>${resVO.category }
			</td>
			<td>
			<fmt:formatDate value="${resVO.res_regdate }" pattern="yyyy-MM-dd HH:mm"/>
			</td>
			<td>입점 결과 
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</div>
</body>
</html>