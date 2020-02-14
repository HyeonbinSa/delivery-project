<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header2.jsp" %>
		<div class="home-content">
		<h1>입점 가게 목록</h1>	
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
					<th>입점일 
					</th>
					<th>입점 결과 
					</th>
				</tr>
				<tbody>
				<c:forEach items="${list }" var="resVO">
					<c:if test="${resVO.permission == 'OK' }">
					<tr>
						<td><a href="/admin/read?res_no=${resVO.res_no}">${resVO.res_no }</a>
						</td>
						<td>${resVO.res_name }
						</td>
						<td>${resVO.category }
						</td>
						<td>
						<fmt:formatDate value="${resVO.permit_date}" pattern="yyyy-MM-dd HH:mm"/>
						</td>
						<td><span class="glyphicon glyphicon-ok-sign"></span> 
						</td>
					</tr>
					</c:if>
				</c:forEach>
				</tbody>
			</table>
		</div>
<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>