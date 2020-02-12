<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>
<main class="main-content">
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
		<c:if test="${resVO.permission == 'none' }">
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
			<td><span class="glyphicon glyphicon-remove-sign"></span> 
			</td>
		</tr>
		</c:if>
	</c:forEach>
	</tbody>
</table>
		</main>
	</div>
	<footer class="footer">
		<div class="footer-inner">
			<div class="info"></div>
		</div>
	</footer>
	</div>
</body>
</html>