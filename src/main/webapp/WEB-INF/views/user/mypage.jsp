<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<script>
</script>
<style>
/* 리스트 페이지 searchbox 사이즈 변경*/
.searchbox{
	height:100px;
	padding-top:30px;
	padding-bottom:30px;
	
}
.mypage-container{
	padding : 30px 5%;
}
/* 마이페이지 제목 */
.mypage-title{
	padding : 20px 20px;
}
h2{
	margin : 0px;
	text-align : center;
}
/* 사용자 정보 */
.user-info-table{
	padding : 10px;
}
.user-detail{
	padding : 10px;
	font-size : 160%;
}
.user-info{
	padding : 10px 20px;
	overflow : auto;
}
.profile{
	background : pink;
	width : 100px;
	height : 100px;
}
.user-info-table{
	width : 100%;
	border-bottom : 1px solid #e6e6e6;
}
.td-profile{
	width : 104px;
}

/* 메뉴 선택 */
.user-info-menu{
	margin : 0px;
	padding-bottom : 15px;
	border-bottom : 1px solid #e6e6e6;
	text-align : center;
	background : #fff;
}
.menu-tab.active{
	background : #e6e6e6;
}
.col-md-3{
	padding : 10px;
	text-align : center;
	border : 1px solid #e6e6e6;
	width:23%;
	margin:1%;
	font-size : 160%;
	font-weight : bold;
}
/* 메뉴 별 패널 */
.user-panel{
	background : aliceblue;
	overflow : auto;
	display :none;
}
/* 주문 내역 패널 */
.panel-title{
	background-color: #333;
    color: #fff;
    font-size: 110%;
    padding: 10px 10px 10px 15px;
}
.order-list{
	margin:0px;
	padding :15px;
}
.order-item{
	border : 1px solid #999;
	padding : 10px;
	width : 48%;
	margin : 1%;
}
.order-item > div {
	padding : 5px;
}
.button-set > .btn {
	margin: 0px 1%;
	width : 30%;
	background : #fff;
}
.order-restaurant{
	font-weight: bold;
	font-size : 140%;
	
}
.order-date{
	color : #999;
}
/* 주문패널에서 주문이 없을 경우 */
.no-order{
	width : 100%;
	padding : 30px 40px;
	display:none;
}
.no-order-title{
	text-align : center;
	font-size : 250%;
	font-weight : bold;
}
.go-order{
	background : red;
	color : #fff;
	padding : 20px;
	margin : 10px 40%; 
	text-align : center;
	font-size : 130%;
	font-weight : bold;
}	
</style>
<script>
function goResPage(res_no){
	window.location.href = '/user/'+res_no;
};
	
$(document).ready(function(){
	// 메뉴 탭 클릭시(아래 패널 별 메뉴 )
	$(".menu-tab").on("click", function(){
		// active 클래스 삭제해줌 
		$(".menu-tab").removeClass("active");
		// 선택된 메뉴에 active 클래스 지정
		$(this).addClass("active");
		// 전체 패널을 보이게함.
		$(".user-panel").show();
		// 아래 패널들을 숨김(선택된 패널만 보이게 하기 위함 ))
		$(".panel").hide();
		// 메뉴에 넣은 id 값을 통해 패널 선택 
		var panel = "."+$(this).attr('id');
		// 해당 패널 보이게함 .
		$(panel).show();
	});
	// myorder 패널 메뉴 클릭 시 
	$("#myorder-panel").on("click", function(){
		$.getJSON("/order/list" ,function(data){
			var str = "";
			// 데이터가 없을 경우 주문하러가기 창보여줌
			if(data.length == 0){
				$(".no-order").show();
			}
			// 데이터의 수만큼
			$(data).each(function(){
				// 주문 번호 가져옴 
				var order_no = this.order_no;
				// 주문 날짜 가져옴 
				var date = new Date(this.order_date);
				// 메뉴 내용 담은 string;
				var menu_str = "";
				// total price 계산
				var total = 0;
				str += "<div class='order-item col-md-6'><div class='order-date'>"+date.toLocaleDateString()+"</div>"
					+"<div class='order-restaurant order-restaurant-"+order_no+"'></div>"
					+"<div class='order-menu order-menu-"+order_no+"'></div>"
					+"<div class='button-set'>"
					+"<div class='btn'>리뷰 쓰기</div>"
					+"<div class='btn btn-res' onclick='goResPage("+this.res_no+")'>가게 상세</div>"
					+"<div class='btn'>주문 내역</div></div></div>";
				$.getJSON("/order/"+order_no, function(item){
					$(item).each(function(){
						total += (this.menu_price*this.quantity);
						menu_str += this.menu_name + " " +this.quantity+ "개/";
					});
					$(".order-menu-"+order_no).html(menu_str + total +"원");
				});
				$.getJSON("/order/getRes/"+this.res_no, function(item){
					$(".order-restaurant-"+order_no).html(item.res_name);
				});
			});
			$(".order-list").html(str);
		});
	});
});
</script>

<div class="mypage-container">
	<div class="mypage-title"><h2>마이페이지</h2></div>
	<input type="hidden" class="member_id" name="member_id" value="${login.member_id }">
	<div class="user-info">
		<table class="user-info-table">
			<tr>
				<td class="td-profile" rowspan="2"><div class="profile"></div></td>
				<td><div class="user-detail user-level">먹초보</div></td>
			</tr>
			<tr>
				<td><div class="user-detail user-nickname"><Strong style="font-size:170%">${login.member_nickname }</Strong><span>님, 어서오세요</span></div></td>
			</tr>
		</table>
	</div>
	<div class="user-info-menu row">
		<div class="menu-tab user-like col-md-3" id="like-panel"><span>찜한가게</span></div>
		<div class="menu-tab user-coupon col-md-3" id="coupon-panel"><span>쿠폰함</span></div>
		<div class="menu-tab user-review col-md-3" id="review-panel"><span>리뷰관리</span></div>
		<div class="menu-tab user-order col-md-3" id="myorder-panel"><span>내 주문</span></div>
	</div>
	<div class="user-panel" >
		<div class="panel like-panel">
			<div class="panel-title like-panel-title">나의 찜목록</div>
		</div>
		<div class="panel coupon-panel">
			<div class="panel-title coupon-panel-title">나의 쿠폰목록 </div>
		</div>
		<div class="panel review-panel">
			<div class="panel-title review-panel-title">나의 리뷰목록</div>
		</div>
		<div class="panel myorder-panel">
			<div class="panel-title myorder-panel-title">나의 주문내역</div>
			<div class="order-list row">
				<div class="no-order">
					<div class="no-order-title">주문 내역이 없습니다.</div>
					<div class="btn go-order">주문하러 가기</div>
				</div>
				</div>
				<div class="order-item col-md-6">
					<div class="order-date">주문 날짜</div>
					<div class="order-restaurant">식당 이름</div>
					<div class="order-menu">음식 메뉴</div>
					<div class="button-set">
						<div class="btn">리뷰 쓰기</div>
						<div class="btn">가게 상세</div>
						<div class="btn">주문 내역</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>