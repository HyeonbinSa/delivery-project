<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
th, td{
border:1px solid black;
}

</style>
<h1>List</h1>
<table >
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
</table>
</body>
</html>