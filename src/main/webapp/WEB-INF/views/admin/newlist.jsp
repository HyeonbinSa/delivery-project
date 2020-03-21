<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header2.jsp" %>
<div class="home-content">
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
		<div class="text-center">
			<ul class="pagination">
				<c:if test="${pageMaker.prev }">
					<li><a href="newlist${pageMaker.makeQuery(startPage -1) }">&laquo;</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }" end ="${pageMaker.endPage }" var="index">
					<li <c:out value="${pageMaker.cri.page == index ? 'class= active' : '' }"/>>
					<a href="newlist${pageMaker.makeQuery(index) }">${index }</a>
				</c:forEach>
				<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
					<li><a href="newlist${pageMaker.makeQuery(endPage + 1) }">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
</div>
	<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>