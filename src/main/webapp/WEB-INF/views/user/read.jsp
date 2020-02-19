<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<style>

.searchbox{
	height:100px;
	padding-top:30px;
	padding-bottom:30px;
	
}
.logo-thubmnail{
	height:70px;
	width:70px;
	background:pink;
	margin:14px;
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

/* restaurant 상세 페이지 css start*/
/* restaurant information*/
.detail-container{
	width:100%;
	overflow:auto;
}
.restaurant-detail{
	width:1024px;
	margin: 10px auto;
	background : gray;
	positon:relative;
}
.restaurant-content{
	margin-bottom : 30px;
	padding-left:10px;
	padding-right:10px;
}
.restaurant-info{
	border : 1px solid #d9d9d9;
}
.restaurant-name{
	padding:10px;
	font-size:17px;
}

.restaurant-detail-info{
	border-top : 1px solid #d9d9d9;
	border-bottom : 1px solid #d9d9d9;
}
.owner-intro-message{
	width:100%;
	padding:13px;
	overflow: hidden;
	text-overflow: ellipsis;
}
.owner-message-title{
	float:left;
	width:10%;
	margin-right:10px;
}
.owner-message{
	float:left;
	width:85%;
	overflow: hidden;
	text-overflow: ellipsis;
}
.text{
	margin-right : 5px;
	color : #999;
}
/* restaurant other information */
.other-info{
	margin-top:10px;
	border : 1px solid #d9d9d9;
}
.panel{
	widthd:100%;
	margin-bottom : 0px;
}
.photo-menu{
	margin-top:20px;
	height:200px;
	background:aquamarine;
}
/* restaurant 상세 페이지 css end */

/* 메뉴 리스트 css */
.menu-group-list{
	padding: 15px;
	border-top: 5px solid #d7dbe6;
	background : #f8f9fa;
	font-size: 17px;
}
.menu-list{
	background : #fff;
	padding: 10px 20px;
	border-top: 1px solid #d7dbe6;
	font-size : 14px;
}
.menu-list-name{
	font-size:18px;
}
.menu-info{
	margin-bottom:5px;
}
.menu-list-detail{
	color : #999;
	font-size:90%;
}
.other-list{
	margin-top:5px;
	text-align : center;
	height:46px;
    border-left: 0;
    padding-bottom: 1px;
    font-size : 20px;
}
/* 가게 정보 패널 관련 css */
.information-panel{
	background: #fff;
    padding: 20px 16px 20px 16px;
    margin-bottom : 0px;
}
.info-item{
}
.info-item-title{
	color: #333;
    font-size: 16px;
    font-weight: bold;
    border-bottom: 1px solid #999;
    padding: 0 0 7px 20px;
    margin-bottom: 10px;
    margin-top: 10px;
    background-size: 16px;
}
.info-item-title > span{
	margin-right :10px;
}
.info-item-cotent{
	padding-left:20px;
}
.item-subtitle{
	color : #999;
	margin-right : 10px;
}
/* 주문표 관련 css */
.order-content {
	padding : 0px 5px;
}
.order-title {
    background-color: #333;
    color: #fff;
    font-size: 110%;
    padding: 10px 10px 10px 15px;
}
.menu-name, .order-button-set{
	padding : 5px 12px 8px 12px;
}

.order-list{
	padding : 5px 15px 5px 15px;
	border: 1px solid #ddd;
	margin-bottom : -1px;
}
.minimum-price{
	border: 1px solid #ddd;
	margin-bottom : -1px;
    text-align: right;
    padding: 10px 12px 7px 12px;
    font-size: 90%;
    background-color: #f3f3f3;
}
.total-price{
	border: 1px solid #ddd;
    background-color: #fff8eb;
    text-align: right;
    color: #f0001e;
    padding: 10px 12px;
    font-size: 110%;
    font-weight: bold;
}
.btn-order{
	width: 100%;
    height: 40px;
    border-radius: 0;
    background-color: #f0001e;
    font-size: 15px;
    color: #FFF;
    margin-top: 7px;
}
.order-button-set{
	overflow:auto;
}
.order-button {
	width :24px;
	margin : 0px 7px;
	background : none;
	border:1px solid red;
	color : red;
}
.price-set{
	float:left;
}
.count-set{
	float:right;
}

/* jQuery css */

.active {
	box-sizing: border-box; 
	border-bottom : 5px solid red;
}
.nav-tabs > li.active > a{
	color : red;
}
</style>
<script>
$(document).ready(function(){
	// 메뉴 클릭 시 
	$(".menu-list").on("click",function(){
		var name = $(this).children(".menu-list-name").html();
		var detail = $(this).children(".menu-list-detail").html();
		var price = $(this).children(".menu-list-price").html();
		// 메뉴에 id 값으로 menu_no 값을 가지고 있기 때문에 id 값을 가져옴 
		var menu_no = $(this).attr('id');
		
		alert("id = " + menu_no);
		
	});
	$('#menu-detail-modal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Button that triggered the modal
		  var name = button.data('name') // Extract info from data-* attributes
		  var component =  button.data('component');
		  var price =  button.data('price');
		  
		  var modal = $(this)
		  modal.find('.modal-body input').text('메뉴 상세' + name + component + price);
	});
	$(".other-list").children("li").on("click", function(){
		$(".other-list").children("li").removeClass("active");
		$(".panel").hide();
		$(this).attr("class");
		var panel = "."+$(this).attr("class")+"-panel";
		$(this).addClass("active");
		$(panel).show();
	});
});
</script>
<div class="detail-container">
	<div class="restaurant-detail">
		<div class="restaurant-content col-md-8"><!-- 8:4 중 8 -->
			<div class="restaurant-info">
				<div class="restaurant-name"><strong>${resVO.res_name }</strong></div>
				<div class="restaurant-detail-info">
					<table class="res-table">
					<tr>
						<td class="res-table-logo">
							<div class="logo-thubmnail"></div>
						</td>
						<td class="res-table-info">
							<div class="res-review" style="font-size:13px"><span class="text">별점</span><span>5.0</span></div>
							<div class="order-info" style="font-size:13px"><span class="text">최소주문금액</span><span>${operationVO.minimum_price }이상 배달</span></div>
							<div class="pay-info" style="font-size:13px"><span class="text">결제 </span><span>신용카드</span></div>
							<div class="delivery-info" style="font-size:13px"><span class="text">배달시간 </span><span>50~60분</span></div>
						</td>
						<td>
						</td>
					</tr>	
				</table>
				</div>
				<div class="owner-intro-message">
					<strong class="owner-message-title">사장님알림 </strong><span class="owner-message"> dlsdlsllslsassssssssssdlsllslsassssssssssdlsllslsasssssssssssssssssssdllfaldfdlsllslsassssssssssdlsllslsassssssssssdlsllslsassssssssssdlsllslsassssssssss</span>
				</div>
			</div>
			<!-- 아래 들어갈 패널 -->
			<div class="other-info">
				<ul class="nav nav-tabs nav-justified other-list"><!-- 네비게이션바 탭형으로 -->
					<li class="menu active"><a>메뉴</a></li>
					<li class="review"><a>리뷰</a></li>
					<li class="information"><a>정보</a></li>		
				</ul>
				<div class="panel menu-panel">
					<div class="photo-menu">포토메뉴의 위치</div>
					<div class="toggle-menu">
						<!-- 식당의 메뉴 그룹 데이터가 있으면 -->
						<c:if test="${groupList != null }">
							<!-- 메뉴 그룹 만큼 반복 -->
							<c:forEach items="${groupList }" var="groupVO">
								<!-- 메뉴 그룹 이름을 출력하는 div 생성  -->
								<div class="menu-group-list">${groupVO.menugroup_name } 
									<!-- 버튼에 해당 메뉴 그룹의 번호를 가진 class를 숨기고 보여주는 기능  -->
									<button class="btn-group-toggle glyphicon glyphicon-menu-down" data-toggle="collapse"
									href=".menu-list-${groupVO.menugroup_no} " aria-expanded="false" aria-controls="collapseExample"></button>
								</div>
								<!-- 해당 메뉴 그룹에 메뉴가 있으면 -->
								<c:if test="${menuList != null}">
										<!-- 해당 메뉴 그룹의 메뉴들을 출력 -->
										<c:forEach items="${menuList}" var="menuVO">
											<c:if test="${menuVO.menugroup_no eq groupVO.menugroup_no}">
												<!-- menu-list-** 형식으로 class 명을 만들어줌// collapse를 하기 위함, id 값에 해당 메뉴 테이블의 메뉴 id값 넣어줌-->
												<div class="collapse menu-list menu-list-${menuVO.menugroup_no }" id="${menuVO.menu_no}" 
													data-toggle="modal" data-target="#menu-detail-modal" 
													data-name="${menuVO.menu_name }" data-component="${menuVO.menu_component}" data-price="${menuVO.menu_price}">
													<div class="menu-info menu-list-name">${menuVO.menu_name }</div>
													<div class="menu-info menu-list-detail">${menuVO.menu_component }</div>
													<div class="menu-info menu-list-price">${menuVO.menu_price }원</div>
												</div>
											</c:if>
										</c:forEach>
								</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
				<div class="panel review-panel" style="display:none">b</div>
				<div class="panel information-panel" style="display:none">
					<div class="info-item">
						<div class="info-item-title">
							<span class="glyphicon glyphicon-home"></span>업체정보
						</div>
						<div class="info-item-content">
							<span class="item-subtitle">영업시간</span><span>${operationVO.start_time} - ${operationVO.end_time}</span>
						</div>
					</div>
					<div class="info-item">
						<div class="info-item-title">
							<span class="glyphicon glyphicon-barcode"></span>결제정보
						</div>
						<div class="info-item-content">
							<span class="item-subtitle">최소주문금액</span><span>${operationVO.minimum_price}원</span>
						</div>
					</div>
					<div class="info-item">
						<div class="info-item-title">
							<span class="glyphicon glyphicon-question-sign"></span>사업자정보
						</div>
						<div class="info-item-content">
							<span class="item-subtitle">상호명</span><span>${resVO.res_name }</span>
						</div>
						<div class="info-item-content">
							<span class="item-subtitle">사업자등록번호</span><span>${ownerVO.owner_number }</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="order-content col-md-4">
			<div class="order-title"><strong>주문표</strong></div>
			<form>
				<div class="order-list">
					<div class="menu-name">메뉴 이름</div>
					<div class="order-button-set">
						<span class="price-set"><button class="order-button">x</button>price</span>
						<span class="count-set"><button class="order-button">-</button>1<button class="order-button">+</button></span>
					</div>
				</div>
				<div class="minimum-price">최소 주문 금액</div>
				<div class="total-price">합계 금액</div>
				<button type="submit" class="btn-order">주문하기</button>
			</form>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/user/modal.jsp" %>
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>
