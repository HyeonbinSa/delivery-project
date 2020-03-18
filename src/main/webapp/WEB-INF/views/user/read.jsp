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
 	display: block;
	float:left;
	width:85%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
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

.order-list-item{
	padding : 5px 15px 5px 15px;
	border: 1px solid #ddd;
	margin-bottom : -1px;
}
.order-list{
	padding : 0px;
	margin : 0px;
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


pre{
	background : #fff;
	border : none;
}
/* jQuery css */

.active {
	box-sizing: border-box; 
	border-bottom : 5px solid red;
}
.nav-tabs > li.active > a{
	color : red;
}
/* 찜 */
.like-res{
	color : #e6e6e6;
	float : right;
}
.like-res.active-like{
	color : red;
}
.like-res > span {
	font-size :80%;
	color : black;
	padding : 0px 5px;
}
/* 리뷰 패널 관련 css*/
.review-list{
	margin-top : 5px;
	padding : 10px;
}
.review-item{
	padding : 20px;
	border : 1px solid #999;
	margin : 10px 5px;
}
/* 리뷰 안에 있는 내용 CSs*/
.review-member{
	font-size : 150%;
	font-weight : bold;
	margin-bottom : 5px;
}
.review-star{
	padding-bottom : 10px;
}
.review-star > span{
	font-size:120%;
	font-weight:bold;
}
.star-set{
	color: white;
    text-shadow:-1px 0 gray,0 1px gray,1px 0 gray,0 -1px gray;
}
.star-set span.on{
	text-shadow:-1px 0 yellow,0 1px yellow,1px 0 yellow,0 -1px yellow;
	color : yellow;
}
.review-content{
	overflow: auto;
	height : 40px;
	margin : 10px;
}
.review-date{
	color : #e6e6e6;
	font-size : 60%;
	margin :  0px 10px;
}
.review_img{
	width : 100%;
	height : 310px;
	overflow : hidden;
}
.image{
	width:100%;
	height : auto;
}
.thumbnail{
	width : 70px;
	height : 70px;
}
.no-review{
	text-align : center;
	font-size : 200%;
	font-weight : bold;
	padding :20px;
}
.no-menu{
	text-align : center;
	font-size : 200%;
	font-weight : bold;
	padding :20px;
	display : none;
}
.reply{
	background : #f0f0f0;
	width : 100%;
	padding : 10px;
	display : none;
}
.reply-owner{
	font-weight : bold;
	font-size : 130%;
	padding : 5px;
}
.reply-date{
	color : #999;
	font-size : 80%;
}
.reply-content{
	margin-top : 15px;
	color : black;
	font-size: 110%;
}
</style>
<script>
function getCartList(){
	// 주문표 출력 리스트
	$.getJSON("/cart/all", function(data){
		var str = "";
		var total_price = 0;
		console.log(data.length);
		// 주문표 리스트가 하나도 없을 경우
		if(data.length == 0){
			str +="<div class='order-list'>"+"<div class='order-list-item'><div class='menu-name'>주문표에 담긴 메뉴가 없습니다.</div></div></div>";
			str += "<div class='minimum-price'>최소 주문 금액</div><div class='total-price'>합계 금액</div><button class='btn-order'>주문하기</button>";
			$(".order-list-form").html(str);
			return;
		}
		// 리스트가 있을 경우
		// 주문표 목록을 감싸주는 div
		str += "<div class='order-list'>";
		// 각 데이터마다
		$(data).each(function(){
			// 총 가격 += 메뉴가격 * 수량;
			total_price += this.menu_price*this.quantity;
			// 주문표 메뉴당 내용 
			str +="<div class='order-list-item'>"+"<div class='menu-name'>"+this.menu_name+"</div>"+
			"<div class='order-button-set' data-menu='"+this.menu_no+"'>"+
			"<span class='price-set'><button onclick='delete_menu("+this.menu_no+");'class='order-button order-button-delete'>x</button>"+(this.menu_price*this.quantity).toLocaleString()+"원</span>"+
			"<span class='count-set'><button onclick='minus_quantity("+this.menu_no+");' class='order-button order-button-minus'>-</button>"+
			this.quantity+"<button onclick='plus_quantity("+this.menu_no+");' class='order-button order-button-plus'>+</button></span>"+
			"</div></div>";
		});
		// 총 금액 출력, 최소주문 금액 출력, 버튼 출력
		str += "</div><div class='minimum-price'>최소 주문 금액 "+"<fmt:formatNumber value='${operationVO.minimum_price }' pattern='#,###' />"+"</div><div class='total-price'>합계 금액 "+total_price.toLocaleString()+"</div><button type='button' onclick='goCheckout()' class='btn-order'>주문하기</button>";
		// order-list-form 에 넣어줌 
		$(".order-list-form").html(str);
	});
};
//메뉴 삭제
function delete_menu(menu_no){
		// ajax로 처리
		$.ajax({
			type : 'delete',
			url : '/cart/'+menu_no,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : 'text',
			data : JSON.stringify({
				menu_no : menu_no
			}),
			success : function(result){
				if(result == 'REMOVE'){
					alert("메뉴가 삭제되었습니다.");
				}
				// 리스트로 출력 
				getCartList();
			}
		});
};
// 수량 뻬기 
function minus_quantity(menu_no){
	// ajax로 처리
	$.ajax({
		type : 'put',
		url : '/cart/minus/'+menu_no,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "PUT"
		},
		dataType : 'text',
		data : JSON.stringify({
			menu_no : menu_no
		}),
		success : function(result){
			//if(result == 'MINUS'){
			//	alert("메뉴가 삭제되었습니다.");
			//}
			// 리스트로 출력 
			getCartList();
		}
	});
};	
//수량 더하기 
function plus_quantity(menu_no){
	// ajax로 처리
	$.ajax({
		type : 'put',
		url : '/cart/plus/'+menu_no,
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "PUT"
		},
		dataType : 'text',
		data : JSON.stringify({
			menu_no : menu_no
		}),
		success : function(result){
			//if(result == 'MINUS'){
			//	alert("메뉴가 삭제되었습니다.");
			//}
			// 리스트로 출력 
			getCartList();
		}
	});
};	
// 체크아웃 화면으로 이동 
function goCheckout(){
	window.location.href = '/user/checkout';
}
// 로그인 화면으로 이동 
function goLogin(){
	window.location.href = '/user/login';
}
// 찜하기 
function like(res_no, member_no){
	$.ajax({
		type : 'post',
		url : '/like/add',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			res_no : res_no,
			member_no : member_no
		}),
		success : function(result){
			if(result == 'LIKE_COMPLETE'){
				alert("찜하기 목록에 추가됩니다!");
			}else if(result == 'ALREADY'){
				alert("이미 찜하기 목록에 있습니다.");
			}
		}
	});
}
// 찜하기 취소 
function unlike(res_no, member_no){
	$.ajax({
		type : 'delete',
		url : '/like/delete',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "DELETE"
		},
		dataType : 'text',
		data : JSON.stringify({
			res_no : res_no,
			member_no : member_no
		}),
		success : function(result){
			if(result == 'UNLIKE'){
				alert("찜하기 목록에서 삭제합니다.");
			}else if(result == 'CHANGE'){
			}
		}
	});
}
// 찜하기 되어있는지 확인
function checkLike(res_no, member_no){
	$.ajax({
		type : 'post',
		url : '/like/check',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			res_no : res_no,
			member_no : member_no
		}),
		success : function(result){
			if(result == 'LIKE'){
				$(".like-res").addClass("active-like");
			}else if(result == 'NOLIKE'){
				$(".like-res").removeClass("active-like");
			}
		}
	});
}
// 사장님 답글 가져오기 
function getReply(review_no){
	$.ajax({
		type : 'post',
		url : '/reply/read',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'JSON',
		data : JSON.stringify({
			review_no : review_no
		}),
		success : function(result){
			if(result != null){
				// reply내용 가져옴 
				var reply_content = result.reply_content;
				var date = new Date(result.reg_date);
				var str = "";
				str += "<i class='glyphicon glyphicon-hand-right'></i><span class='reply-owner'>사장님</span>"
					+"<span class='reply-date'>"+date.toLocaleDateString()+"</span>"
					+"<div class='reply-content'>"+reply_content+"</div>";
				$(".reply-"+review_no).html(str);
				$(".reply-"+review_no).show();
			}
		}
	});
}
$(document).ready(function(){
	// 메뉴가 없을 경우 "메뉴가없습니다"출력 
	if('${groupList}'=='[]'){
		$(".no-menu").show();
	}
	var Quantity = 1;
	// 여러 메소드에서 접근할 수 있게 여기에 선언 
	var price = 0;
	
	// 로그인한계정이 있는지 확인 
	var account = '${login}';
	// 로그인한 계정이 있으면 
	if(account != ''){
		// 정보 가지고옴 
		var res_no = Number('${resVO.res_no}');
		var member_no = Number('${login.member_no}');
		// 해당 찜 아이템이 있는지 체크 
		checkLike(res_no, member_no);
	}
	// 리스트 출력
	getCartList();
	
	// 수량이 1일 경우 모달 창 내에 있는 - 버튼 비활성화 
	if(Quantity == 1){
		$(".modal-minus").attr("disabled", true);
	}
	// 메뉴 클릭시 모달창 열림
	$('#menu-detail-modal').on('show.bs.modal', function (event) {
		Quantity = 1;
		// 클릭한 div를 button 값에 넣어줌
		var button = $(event.relatedTarget) // Button that triggered the modal
		// data-*** 형식의 값을 넣어줌 
		var name = button.data('name') // Extract info from data-* attributes
		var component =  button.data('component');
		price =  button.data('price');
		// id에 menu_no값 넣어줘서 해당 값 가져옴
		var menu_no = button.attr('id');
		var modal = $(this);
		// 모달 창 내에 기본적인 값 넣어줌
		modal.find('.modal-detail-name').text(name);
		modal.find('.modal-detail-component').text(component);
		modal.find('.modal-detail-price').text(price+"원");
		modal.find('.modal-total-price').text(price+"원");
		modal.find('.modal-count-number').text(Quantity);
		// 주문표 기능을 위해 form 내에 hidden 값으로 넣어줌
		$(".menu_no").val(menu_no);
		$(".menu_name").val(name);
		$(".menu_price").val(price);
		$(".quantity").val(Quantity);
		$(".res_no").val('${resVO.res_no}');
	});
	// 메뉴별 클릭시 패널 숨김(메뉴/리뷰/정보)
	$(".other-list").children("li").on("click", function(){
		$(".other-list").children("li").removeClass("active");
		$(".panel").hide();
		$(this).attr("class");
		var panel = "."+$(this).attr("class")+"-panel";
		$(this).addClass("active");
		$(panel).show();
	});
	// modal 창에서 + 버튼 클릭시 
	$(".modal-plus").on("click", function(){
		// 수량증가
		Quantity += 1;
		// 수량이 1이 아닐 경우  - 버튼 활성
		if(Quantity != 1 ){
			$(".modal-minus").attr("disabled", false);
		}
		// 수량 숫자 변경 
		$(".modal-count-number").html(Quantity);
		$(".quantity").val(Quantity);
		// 총 가격 숫자 변경 가격 * 수량 
		$('.modal-total-price').text(price*Quantity+"원");
	});
	// modal창에서 - 버튼 클릭시 
	$(".modal-minus").on("click", function(){
		//수량 -1 
		Quantity -= 1;
		// 1일때는 minus 버튼 비활성화 
		if(Quantity == 1 ){
			$(".modal-minus").attr("disabled", true);
		}
		// 수량 숫자 변경 
		$(".modal-count-number").html(Quantity);
		$(".quantity").val(Quantity);
		// 총 가격 숫자 변경 
		$('.modal-total-price').text(price*Quantity+"원");
	});
	$(".owner-message").on("click", function(){
		// other-list 밑의 li태그에 설정된 active 클래스를 삭제하고
		$(".other-list").children("li").removeClass("active");
		// 패널들을 숨김 
		$(".panel").hide();
		// 메뉴 탭에 active 클래스를 넣어주어 활성화함.
		$(".information").addClass("active");
		// information-panel을 활성화함 
		$(".information-panel").show();
	});
	
	// 주문표에 추가 버튼 클릭 시 
	$(".btn-modal-cart").on("click", function(){
		// 데이터베이스에 들어갈 데이터 가져오기 
		var res_no = $(".res_no").val();
		var menu_no = $(".menu_no").val();
		var menu_name = $(".menu_name").val();
		var menu_price = $(".menu_price").val();
		var quantity = $(".quantity").val();
		// ajax로 처리
		$.ajax({
			type : 'post',
			url : '/cart',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				res_no : res_no,
				menu_no : menu_no,
				menu_name : menu_name,
				menu_price : menu_price,
				//session_id : session_id,
				quantity : quantity
			}),
			success : function(result){
				if(result == 'SUCCESS'){
					// 모달창 닫기
					$('#menu-detail-modal').modal('hide');
					alert("장바구니에 추가 되었습니다.");
				}else if(result == 'CHANGE'){
					$('#menu-detail-modal').modal('hide');
					alert("기존 상품이 삭제되었습니다.");
				}
				
				// 리스트로 출력 
				getCartList();
			}
		});
	});
	// modal 창에서 주문하기 버튼 클릭 시 장바구니 추가 및 이동 
	$(".btn-modal-order").on("click", function(){
		// 데이터베이스에 들어갈 데이터 가져오기 
		var res_no = $(".res_no").val();
		var menu_no = $(".menu_no").val();
		var menu_name = $(".menu_name").val();
		var menu_price = $(".menu_price").val();
		var quantity = $(".quantity").val();
		// ajax로 처리
		$.ajax({
			type : 'post',
			url : '/cart',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				res_no : res_no,
				menu_no : menu_no,
				menu_name : menu_name,
				menu_price : menu_price,
				//session_id : session_id,
				quantity : quantity
			}),
			success : function(result){
				if(result == 'SUCCESS'){
					// 모달창 닫기
					$('#menu-detail-modal').modal('hide');
					alert("장바구니에 추가 되었습니다.");
				}else if(result == 'CHANGE'){
					$('#menu-detail-modal').modal('hide');
					alert("기존 상품이 삭제되었습니다.");
				}
				// 체크아웃 페이지로 이동
				goCheckout();
			}
		});
	});
	// 찜하기 눌렀을 때 
	$(".like-res").on("click", function(){
		// 로그인한계정이 있는지 확인 
		var account = '${login}';
		// 로그인한 계정이 있으면 
		if(account != ''){
			// 식당 번호 및 회원 번호 가져옴
			var res_no = '${resVO.res_no}';
			var member_no = '${login.member_no}';
			
			// 이미 acitve 되어있으면 
			if($(this).hasClass("active-like") === true){
				unlike(res_no, member_no);
				// active 클래스 제거
				$(this).removeClass("active-like");
			// active 클래스를 넣어주어 빨간색으로 변경 	
			}else{
				like(res_no, member_no);
				$(this).addClass("active-like");
			}	
		// 로그인 되어있지 않으면 로그인 화면으로 이동 	
		}else{
			goLogin();
		}
		
	});
	// 메뉴에서 리뷰관리를 눌렀을 때 
	$(".review").on("click", function(){
		// 해당 사용자가 작성한 리뷰를 가져옴 
		$.getJSON("/review/list/${resVO.res_no}" ,function(data){
			var str = "";
			if(data.length != 0){
				// 데이터가 들어있는 만큼 반복
				$(data).each(function(){
					var date = new Date(this.reg_date);
					// 리뷰를 보여줄 태그
					str+="<div class='review-item'>"
						+"<div class='review-member'>"+this.member_nickname+"<span class='review-date'>"+date.toLocaleDateString()+"</span></div>"
						+"<div class='review-star'><span>별점 : </span>"
						+"<span class='star-set'>";
						for(var num=1; num<=5; num++){
							if(num <= this.star){
								str+="<span class='glyphicon glyphicon-star on'></span>"
							}else{
								str+="<span class='glyphicon glyphicon-star'></span>"
							}
						}
					str+="</span>"+"</div>"
					if(this.review_img != "" && this.review_img != null){
						str+="<div class='review_img'>"+"<img class='image' src='displayFile?fileName="+this.review_img+"'/></div>";
					}
					str+="<div class='review-content'>"
						+this.review_content
						+"</div>"
						+"<div class='reply reply-"+this.review_no+"'></div>"// 여기에 사장님 댓글이 있으면 들어가야함.
						+"</div>";
					getReply(this.review_no);
				});
				$(".review-list").html(str);
			}
			else{
				$(".no-review").show();
			}
		});
	});
});
</script>
<div class="detail-container">
	<div class="restaurant-detail">
		<div class="restaurant-content col-md-8"><!-- 8:4 중 8 -->
			<div class="restaurant-info">
				<div class="restaurant-name"><strong>${resVO.res_name }</strong><i class="like-res glyphicon glyphicon-heart"><span>찜하기</span></i></div>
				<div class="restaurant-detail-info">
					<table class="res-table">
					<tr>
						<td class="res-table-logo">
							<div class="logo-thubmnail">
								<c:if test="${resVO.res_thumbnail != null }">
			 						<img class='thumbnail' src="displayFile?fileName=${resVO.res_thumbnail }">
			 					</c:if>
			 					<c:if test="${resVO.res_thumbnail == null }">
			 						<img class='thumbnail' src='/resources/image/no_image.png'/>
	 							</c:if>
							</div>
						</td>
						<td class="res-table-info">
							<div class="res-review" style="font-size:13px"><span class="text">별점</span><span>5.0</span></div>
							<div class="order-info" style="font-size:13px"><span class="text">최소주문금액</span><span>${operationVO.minimum_price } 원 이상 배달</span></div>
							<div class="pay-info" style="font-size:13px"><span class="text">결제 </span><span>신용카드</span></div>
							<div class="delivery-info" style="font-size:13px"><span class="text">배달시간 </span><span>50~60분</span></div>
						</td>
						<td>
						</td>
					</tr>	
				</table>
				</div>
				<div class="owner-intro-message">
					<strong class="owner-message-title">사장님알림 </strong><span class="owner-message"> ${resVO.res_intro }</span>
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
					<c:if test="">
					<div class="photo-menu" style="display:none;">포토메뉴의 위치</div>
					</c:if>
					<div class="toggle-menu">
						<div class="no-menu">메뉴가 없습니다. </div>
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
													<span class="menu-info menu-list-price"><fmt:formatNumber value="${menuVO.menu_price }" pattern="#,###" /></span><span>원</span>
												</div>
											</c:if>
										</c:forEach>
								</c:if>
							</c:forEach>
						</c:if>			
					</div>
				</div>
				<div class="panel review-panel" style="display:none">
					<div class="review-list">
						<div class="no-review" style="display:none;">작성된 리뷰가 없습니다. </div>
					</div>
				</div>	
				<div class="panel information-panel" style="display:none">
					<div class="info-item">
						<div class="info-item-title">
							<span class="glyphicon glyphicon-volume-up"></span>사장님 알림
						</div>
						<div class="info-item-content">
							<pre>${resVO.res_intro}</pre>
						</div>
					</div>
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
			<div class="order-list-form">
				<!-- <div class="order-list">
					 <div class='order-list-item'>
						 <div class="menu-name">메뉴 이름</div>
						<div class="order-button-set">
							<span class="price-set"><button class="order-button">x</button>price</span>
							<span class="count-set"><button class="order-button">-</button>1<button class="order-button">+</button></span>
						</div> 
					</div>
				</div>-->
				<!-- <div class="minimum-price">최소 주문 금액</div>
				<div class="total-price">합계 금액</div>
				<button type="submit" class="btn-order">주문하기</button>-->
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/user/modal.jsp" %>
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>
