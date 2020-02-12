<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
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
.searchbox {
    height: 150px;
    background: skyblue;
    padding: 50px 100px 50px 100px;
}
.category-nav{
	height:60px;
	width:100%;
	vertical-align: middle;
}
.navbar-nav{
	float:none;
	display:inline-block;
}
.collapse{
	float:none;
	text-align:center;
}
.navbar-nav > li{
	
	margin-left : 5px;
	vertical-align: middle;
	display:inline;
}
</style>
<div class="category-nav">
<nav class="navbar navbar-default">
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><button class="glyphicon glyphicon-search"></button></li>
			<li><a>전체보기</a></li>
			<li><a>1인분</a></li>
			<li><a>프랜차이즈</a></li>
			<li><a>한식</a></li>
			<li><a>치킨</a></li>
			<li><a>피자/양식</a></li>
			<li><a>중국집</a></li>
			<li><a>일식/돈까스</a></li>
			<li><a>족발/보쌈</a></li>
			<li><a>분식</a></li>
			<li><a>카페/디저트</a></li>
			<li><a>편의점</a></li>
		</ul>
	</div>
</nav>
</div>

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
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>