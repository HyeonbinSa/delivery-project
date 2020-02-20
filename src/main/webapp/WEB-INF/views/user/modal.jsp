<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Modal -->
<style>
.modal-body{
	padding:15px 0px 0px 0px;
}
.modal-photo{
	background : aliceblue;
}
.modal-title{
	text-align : center;
}
.modal-detail{
	text-align:center;
}
.modal-detail-component{
	color : #999;
	padding-bottom:10px;
}
.modal-detail-name{
	padding:20px;
	padding-bottom:5px;
	font-size:200%;
}
.modal-detail-price{
 	float:right;
}
.modal-count{
		overflow:auto;
}
.modal-price{
	border-top : 1px solid #e5e5e5;
	border-bottom : 1px solid #e5e5e5;
	padding : 10px;
	font-size: 120%;
}
.modal-count{
	border-bottom : 1px solid #e5e5e5;
	padding : 10px;
	font-size: 120%;
}
.modal-count-number{
	margin-right:8px;
	margin-left:8px;
}
.modal-minus, .modal-plus{
	width : 30px;
	height : 30px;
	border : 1px solid #e5e5e5;
}
.modal-total{
	overflow : hidden;
	font-size : 120%;
	background-color : #f0f0f0;
	padding : 20px 15px 15px 15px;
}
.modal-total-price{	
	font-size : 150%;
	color : red;
	float : right;
}
.modal-button-set{
	padding : 5px;
	background:#fff;
}
.btn-modal{
	width:40%;
	margin-left:5%;
	margin-right:5%;
	height : 40px;
	background : #555;
	color : #fff;
	
}
.btn-modal-order{
	background : #f0001e;
	color: #fff;
}
</style>
<div class="modal fade" id="menu-detail-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">메뉴 상세</h4>
      </div>
      <div class="modal-body">
      	<div class="modal-photo">
		</div>
		<div class="modal-detail">
			<div class="modal-detail-name">메뉴이름</div>
			<div class="modal-detail-component">메뉴 구성</div>
		</div>
		<div class="modal-price"><strong>가격</strong><div class="modal-detail-price">가격</div> </div>
		<div class="modal-count">
			<div class="modal-order-count"><strong>수량</strong>
			<span class="count-set"><button class="modal-minus">-</button><span class="modal-count-number">1</span><button class="modal-plus">+</button></span>
			</div>
		</div>
		<div class="modal-total">
			<strong>총 주문금액</strong>
			<span class="modal-total-price">총 가격</span>
		</div>
        <form>
        	<input type="hidden" name="res_no" class="res_no">
        	<input type="hidden" name="menu_no" class="menu_no">
        	<input type="hidden" name="menu_name" class="menu_name">
        	<input type="hidden" name="menu_price" class="menu_price">
        	<input type="hidden" name="quantity" class="quantity">
        </form>
      </div>
      <div class="modal-button-set row">
        <button type="button" class="btn-modal btn-modal-cart col-md-5">주문표 추가</button>
        <button type="button" class="btn-modal btn-modal-order col-md-5">주문하기</button>
      </div>
    </div>
  </div>
</div>