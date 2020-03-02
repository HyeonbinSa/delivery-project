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
	height : 600px;
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
.thumbnail{
	width : 70px;
	height : 70px;
	margin : 0px;
}
</style>
<div class="main-container">
	<!-- 식당 리스트 출력 -->
	<div class="row res-list">
		
		<!-- 식당 내용 출력 -->
		<!-- 1번째는 예시 -->
		<!-- <div class="res-item col-md-6">
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
		</div>-->
		<c:forEach items="${list }" var="resVO">
			<div class="res-item col-md-6">
				<div class="res-info" onclick="location.href='/user/${resVO.res_no}'">
					<table class="res-table">
						<tr>
							<td class="res-table-logo">
								<div class="logo-thubmnail">
									<c:if test="${resVO.res_thumbnail != null }">
			 							<img class='thumbnail' src="/user/displayFile?fileName=${resVO.res_thumbnail }">
			 						</c:if>
			 						<c:if test="${resVO.res_thumbnail == null }">
			 							<img class='thumbnail' src='/resources/image/no_image.png'/>
	 								</c:if>
								</div>
							</td>
							<td class="res-detail-info">
								<div class="res-name">${resVO.res_name }</div>
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