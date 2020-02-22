<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<style>
/* 리스트 페이지 searchbox 안보이게 설정*/
.searchbox{
	display : none;
}
/*상단 카테고리별 네비바 안보이게 설정  CSS */
.category-nav{
	display:none;
}
/* 전체 wrap 사이즈 설정  */
.checkout-wrap{
	height : 1200px;
	width: 100%;
}
/* 실제 콘텐츠 들어갈 곳 "row "클래스로 설정되어있어 안에 내용 들어감  */
.checkout-content{
	margin: 0px;
	padding : 20px 50px;
	width : 100%;
}
/* 주문자 정보 들어갈 공간 */
.order-info{
	padding-bottom:20px;
}
/* 장바구니 리스트 들어갈 공간 */
.cart-content{
	border : 1px solid #e6e6e6;
	background : #fff;
}
.cart-list{
	
}
/* 주문자 정보 입력 공간의 제목 */
.order-info-title{
	background : #333;
	color : #fff;
	font-size : 110%;
	padding : 10px 10px 10px 15px;
}
/* 장바구니 목록 공간 제목 */
.cart-info-title{
	background : #e6e6e6;
	color : #333;
	font-size : 110%;
	padding : 10px 10px 10px 15px;
}
/* 세부 항목제목 */
.order-info-subtitle{
	background : #E6E6E6;
	font-size : 110%;
	padding : 10px 10px 10px 15px;
}
/* 주문자 정보 입력 공간 */
.order-info-body{
	border : 1px solid #e6e6e6;
	padding : 10px 10px 10px 15px;
	background : #fff;
}
/* 정보 입력 Table */
.info-content{
	width : 100%;
}
/* 테이블 내의 제목 css */
.table-label{
	text-align : right;
}
td{
	padding : 10px;
}
/* 결제방식 선택 타이틀 */
.pay-title{	
	width: 100%;
}
.pay-title > strong{
	margin-right : 10px;
}
.pay-title > span {
	color : #999;
	font-size : 12px;
}
/* 결제 방식 버튼 관련 */
.button-group{
	padding : 5px;
}
.pay-button{
	margin : 5px 1%;
	width : 47%;
	border : 1px solid #999;
	padding : 10px;
	text-align : center;
}
.pay-button.active{
	border : 1px solid red;
}
.pay-button.active > i{
	color : red;
}
.glyphicon{
	padding : 5px;
}
/* 쿠폰 입력란 */
.btn-coupon{
	width : 100%;
	border : 1px solid red;
	color : red;
	background : #fff;
}
/* 장바구니 목록 - 식당 이름  */
.cart-res-name{
	border-top : 1px solid #e6e6e6;
	border-bottom : 1px solid #e6e6e6;
	padding : 10px 10px 10px 15px;
}
/* 장바구니 목록 화면 */
.cart-item-list{
	background : #fff8eb;
	padding : 10px 10px 10px 15px;
}
/* 장바구니 개별 아이템  */
.cart-item {
	padding : 5px;
}
.cart-item > span{
	margin-left : 3px;
	margin-right : 3px;
}
.cart-item-price{
	float : right;
	text-align : right;		
}
/* 전체 금액 */
.cart-item-total{
	margin-top : 10px;
	border-top : 1px dotted #666;
	color: #f0001e;
	padding : 15px;
	font-size: 110%;
    font-weight: bold;
    letter-spacing: -1px;
}
/* 주문하기 버튼 */
.btn-order{
	width: 100%;
    height: 40px;
    border-radius: 0;
    background-color: #f0001e;
    font-size: 15px;
    color: #FFF;
    margin-top: 7px;
}
</style>
<script>




$(document).ready(function(){
	// 주문요청사항 입력 시 글자수 확인
	$(".order-request").on("keyup", function(){
		var content = $(this).val();
		$(".text-count").html(content.length+"/100");
	});
	// 결제 방식 버튼 누를시
	$(".pay-button").on("click", function(){
		$(".pay-button").removeClass("active");
		// 해당 레이블 active 시켜줌
		$(this).addClass("active");
		// 레이블 안에 들어있는 span의 내용(결제 방식) 가져옴 
		var pay = $(this).children("span").html();
		// hidden input 태그에 값으로 넣어줌
		$(".payment").val(pay);
	});

});

</script>
<div class="checkout-wrap">
	<!-- 실제 들어갈 콘텐츠  -->
	<div class="checkout-content row">
		<!-- 주문자 정보 들어갈 공간  -->
		<div class="order-info col-md-8">
			<div class="order-info-title"><strong>결제하기</strong></div>
			<div class="order-info-subtitle"><strong>배달정보</strong></div>
			<div class="order-info-body">
				<table class="info-content">
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
					<tr>
						<td class="table-label"><label >주소</label></td>
						<td><input type="text" class="form-control" name="" placeholder="주소 입력 "></td>
					</tr>
					<tr>
						<td class="table-label"><button class="glyphicon glyphicon-search"></button></td>
						<td><input type="text" class="form-control" name="" placeholder="상세 주소 입력"></td>
					</tr>
					<tr>
						<td class="table-label"><label>휴대폰 번호</label></td>
						<td><input type="text" class="form-control" name="" placeholder="휴대폰 번호 들어갈 부분	"></td>
					</tr>
				</table>
			</div>
			<!-- 주문 요청사항 입력 부분  -->
			<div class="order-info-subtitle"><strong>주문시 요청사항</strong></div>
			<div class="order-info-body">
				<textarea rows="3" class="form-control order-request" maxlength="100" name="order_request"  placeholder="주문 시 요청사항을 입력해주세요."></textarea>
				<div class="text-limit " style="width:100%;overflow:auto;"><span class="text-count" style="float:right">0/100</span></div>
			</div>
			<!-- 결제 방식 입력 부분  -->
			<div class="order-info-subtitle"><strong>결제수단 선택</strong></div>
			<div class="order-info-body">
				<input type="hidden" class="payment" name="payment" value="신용카드">
				<div class="pay-title"><strong>현장결제</strong><span>음식받고 직접 결제</span></div>
				<div class="button-group">
					<label class="pay-button active"><i class="glyphicon glyphicon-barcode"></i><span>신용카드</span></label>
					<label class="pay-button"><i class="glyphicon glyphicon-copyright-mark"></i><span>현금</span></label>
				</div>	
				<div class="pay-title"><strong>여기서결제</strong><span>웹에서 미리 결제</span></div>
				<div class="button-group">
					<label class="pay-button"><i class="glyphicon glyphicon-barcode"></i><span>신용카드</span></label>
					<label class="pay-button"><i class="glyphicon glyphicon-copyright-mark"></i><span>휴대폰결제</span></label>
					<label class="pay-button"><i class="glyphicon glyphicon-barcode"></i><span>네이버페이</span></label>
					<label class="pay-button"><i class="glyphicon glyphicon-copyright-mark"></i><span>스마일페이</span></label>
				</div>	
			</div>
			<!-- 쿠폰 입력 하는 부분 -->
			<div class="order-info-subtitle"><strong>할인 방법 선택</strong></div>
			<div class="order-info-body">
			<table class="info-content" >
				<colgroup>
					<col width="10%">
					<col width="80%">
					<col width="10%">
				</colgroup>
				<tr>
					<td><label>쿠폰</label></td>
					<td><input type="text" class="form-control"></td>
					<td><button class="btn-coupon">적용</button></td>
				</tr>
			</table>
			
			</div>
		</div>
		<!-- 장바구니 내용 들어갈 공간  -->
		<div class="cart-list col-md-4">
			<div class="cart-content">
				<div class="cart-info-title"><strong>주문내역</strong></div>
				<div class="cart-res-name"><strong>${resVO.res_name }</strong></div>
				<div class="cart-item-list">
					<c:set var="total" value="0"/>
						<c:forEach items="${list }" var="item">
							<c:set var="total" value="${total + (item.menu_price * item.quantity) }"/>
							<div class="cart-item"><span>${item.menu_name }</span>X<span>${item.quantity }</span>개<span class="cart-item-price"><fmt:formatNumber value="${item.menu_price * item.quantity }" pattern="#,###" /> 원</span></div>
						</c:forEach>
					<div class="cart-item-total"><span>총 결제 금액</span><span class="cart-item-price"><fmt:formatNumber value="${total }" pattern="#,###" /> 원</span></div>
				</div>
			</div>
			<button type="submit" class="btn-order">주문하기</button>
		</div>
	</div>

</div>
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>
