<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>

<style>
/* 리스트 페이지 searchbox 사이즈 변경*/
.searchbox{
	height:100px;
	padding-top:30px;
	padding-bottom:30px;
	
}
/*상단 카테고리별 네비바 관련 CSS */
.category-nav{
	height:60px;
	width:100%;
	vertical-align: middle;
}
.category-nav-ul{
	float:none;
	display:inline-block;
}
.category-collapse{
	float:none;
	text-align:center;
}
.category-nav-ul > li{
	margin-left : 5px;
	vertical-align: middle;
	display:inline;
}
.list-container > .row{
	height : 100%;
}

.res-search{
	margin-top:10px;
	height:30px;
}
/* 상단 카테고리별 네비바 관련 CSS end */
/* 식당 리스트 */
.res_list{
	margin:5px;
}
.main-container{
	margin:0;
	padding: 5px;
	background:#fafafa;
}
.res-item{
	height : 118px;
	padding:10px;
}
.res-info{
	width:100%;
	height:100%;
	border: 1px solid gray;
}
.logo-thubmnail{
	height:70px;
	width:70px;
	background:pink;
	margin:14px;
}
.res-table{
	width:100%;
	height:100%;
}
.res-table > tr{
	width:100%;
}
.res-table-logo{
	width:70px;
}
.res-detail-info{
	width:50%;

}

</style>
<!--  
<div class="category-nav">
	<nav class="navbar navbar-default category-navbar">
		<div class="collapse navbar-collapse category-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav category-nav-ul">
				<li><button class="glyphicon glyphicon-search res-search"></button></li>
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
				<li class="dropdown ">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">정렬 방식<span class="caret"></span></a>
	          		<ul class="dropdown-menu orderby-ul" role="menu">
		            <li><a href="#">별점 순 </a></li>
		            <li><a href="#">리뷰 많은 순</a></li>
		            <li><a href="#">최소 주문 금액 순</a></li>
		            <li><a href="#">거리 순</a></li>
		            <li><a href="#">배달 시간 순</a></li>
	          		</ul>
	          	</li>
			</ul>
		</div>
	</nav>
</div>
-->
<div class="main-container">
	<!-- 식당 리스트 출력 -->
	<div class="row res-list">
		
		<!-- 식당 내용 출력 -->
		<!-- 1번째는 예시 -->
		<div class="res-item col-md-6">
			<div class="res-info">
				<table class="res-table">
					<tr>
						<td class="res-table-logo">
							<div class="logo-thubmnail"></div>
						</td>
						<td class="res-detail-info">
							<div class="res-name">이것을 틀을짜기 위한 예시</div>
							<div class="res-review" style="font-size:11px"><span>별점5.0</span><span>리뷰200</span>|<span>사장님댓글200</span></div>
							<div class="order-info" style="font-size:11px"><span>요기서결제</span><span>13500이상 배달</span></div>
							<div class="event-info" style="font-size:11px"><span>2000원할인</span></div>
						</td>
						<td>
						</td>
					</tr>	
				</table>
			</div>
		</div>
		<c:forEach items="${list }" var="resVO">
			<div class="res-item col-md-6">
				<div class="res-info" onclick="location.href='/user/${resVO.res_no}'">
					<table class="res-table">
						<tr>
							<td class="res-table-logo">
								<div class="logo-thubmnail"></div>
							</td>
							<td class="res-detail-info">
								<div class="res-name">${resVO.res_name }<span>/ ${resVO.category }</span></div>
								<div class="res-review" style="font-size:11px"><span>별점5.0</span><span>리뷰200</span>|<span>사장님댓글200</span></div>
								<div class="order-info" style="font-size:11px"><span>요기서결제</span><span>13500이상 배달</span></div>
								<div class="event-info" style="font-size:11px"><span>2000원할인</span></div>
							</td>
							<td>
							</td>
						</tr>	
					</table>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>