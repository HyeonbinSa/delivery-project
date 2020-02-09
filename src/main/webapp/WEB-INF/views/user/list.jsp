<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<section class="res-list-cont"></section>
<style>
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
.res_list{
	margin:5px;
}
td{
border:1px solid black;}
</style>
<nav class="navbar navbar-default">
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav nav-tabs nav-justified">
	<li role="presentation"><span class="glyphicon glyphicon-search"></span></li>
	<li role="presentation"><a href="#">전체보기</a></li>
	<li role="presentation"><a href="#">1인분</a></li>
	<li role="presentation"><a href="#">프렌차이즈</a></li>
	<li role="presentation"><a href="#">치킨</a></li>
	<li role="presentation"><a href="#">피자/양식</a></li>
	<li role="presentation"><a href="#">중국집</a></li>
	<li role="presentation"><a href="#">한식</a></li>
	<li role="presentation"><a href="#">일식/돈까스</a></li>
	<li role="presentation"><a href="#">족발/보쌈</a></li>
	<li role="presentation"><a href="#">분식</a></li>
	<li role="presentation"><a href="#">카페/디저트</a></li>
	<li role="presentation"><a href="#">편의점</a></li>
	</ul>
  </div>
</nav>
<div class="container">
  <div class="row">
 	<c:forEach items="${list }" var="resVO">
 		<div class="res_list" onclick="location.href='/user/${resVO.res_no}'">
	 		<div class="col-sm-6">
	 		<table>
	 		<tr>
	 			<td rowspan="2">로고</td><td>${resVO.res_name }</td>
	 		</tr>
	 		<tr>
	 			<td>${resVO.category }</td>
	 		</tr>
	 		</table>
	 		</div>
 		</div>
 	</c:forEach>    
  </div>
</div>
</body>
</html>