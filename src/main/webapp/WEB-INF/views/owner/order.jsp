<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/owner_header2.jsp" %>
<style>
.order-contet{
	width:100%;
	height:90%;
	margin-bottom : 30px;
	border:1px solid #999;
	overflow:auto;
}
.navbar{
	margin-bottom : 0px;
}
.category-nav{
	height: 56px;
}
.order-title{
	background : #333;
	color : #fff;
	padding : 20px 40px;
	font-size : 200%;
	font-weight : bold;
}
.order-menu{
	width : 100%;
	background : #e6e6e6;
	margin : 0px;
	height : 60px;
	padding : 0px;
}
.order-menutab{
	text-align : center;
	font-size : 150%;
	padding : 15px;
}
.order-menutab.on{
	background: #666;
}
.ing{
	border-left : 1px solid #666;
	border-right : 1px solid #666;
}
/* 주문목록 표시 */
.order-panel{
	background : #fff;
	heigh : 100%;
	border-top:1px solid #666;
	overflow:auto;
	margin-bottom: 20px;
}

/* 주문 정보 가지고 있음 */
.order-item{
	padding : 15px;
	margin : 6px;
	border :2px solid  #999;
	border-radius : 5px;
}
/* 주문 시간 */
.order-time{
	font-size : 200%;
	text-align : center;
}
.order-status{
}
.status {
	margin-left : 5px;
	display: inline-block;
	background : #e6e6e6;
	border :1px solid  #999;
	border-radius : 5px;	
	color : #666;
	padding : 3px;
}
.menu-summary{
	font-size : 140%;
	
}
.order-summary{
	font-weight : bold;
}
.btn-receipt{
	width: 100%;
	background : #fff;
	color : red;
	border : 3px solid red;
}
.no-list{
	text-align : center;
	font-size : 250%;
	font-weight : bold ;
	height : 100%;
}
</style>
<script>
// 주문 접수 대기 -> 조리 중 
function goIng(order_no){
	// ajax로 처리
	$.ajax({
		type : 'PUT',
		url : '/order/goIng',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "PUT"
		},
		dataType : 'text',
		data : JSON.stringify({
			order_no : order_no
		}),
		success : function(result){
			if(result == "COMPLETE_ING"){
				alert("접수가 완료되었습니다.");
			}
		}
	});
}
// 조리 중 -> 조리 완료 
function goDone(order_no){// ajax로 처리
	$.ajax({
		type : 'PUT',
		url : '/order/goDone',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "PUT"
		},
		dataType : 'text',
		data : JSON.stringify({
			order_no : order_no
		}),
		success : function(result){
			if(result == "COMPLETE_DONE"){
				alert("조리가 완료되었습니다.");
			}
		}
	});
	
}

$(document).ready(function(){
	var res_no = ${resVO.res_no};
	// 메뉴 탭 클릭 시 
	$(".order-menutab").on("click", function(){
		// 메뉴 탭 전체 on 클래스 제거 
		$(".order-menutab").removeClass("on");
		// 클릭 된 탭에만 On 클래스 추가 
		$(this).addClass("on");
		// 클릭 된 탭에 id 값 가지고옴 
		var order_status = $(this).attr("id");
		switch(order_status){
		case "wait":
			var status = "접수 대기";
			break;
		case "ing":
			var status = "조리 중";
			var btn = "완료"
			break;
		case "done":
			var status = "완료";
			break;
		}
		
		// ajax 시작 (주문 목록 가져옴 (res_no, order_status 를 통해 ))
		$.ajax({
			type : 'POST',
			url : '/order/ownerlist',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'json',
			data : JSON.stringify({
				res_no : res_no,
				order_status : order_status
			}),
			success : function(result){
				var str = "";
				if(result != ""){
					$(".order-panel").show();
					$(".no-order").hide();
					$(result).each(function(){
						// 요약 정보 
						var summary  = "";
						// 요약에 들어갈 총 개수 
						var total_quantity = 0;
						// 요약에 들어갈 총 가격 
						var total_price = 0;
						var order_no = this.order_no;
						var time = new Date(this.order_date);
						var order_time = "<div class='order-time col-md-2'>"+time.getHours() + ":"+time.getMinutes() + ":" + time.getSeconds()+"</div>"
						var order_address = "<div class='order-address'>"+this.order_address+"</div>";
						var order_request = "<div class='order-request'>"+this.order_request+"</div>";
						str += "<div class='order-item row'>"
							+"<div class='order-time col-md-2'>"+time.getHours() + ":"+time.getMinutes() + ":" + time.getSeconds()+"</div>"
							+"<div class='order-detail col-md-8'>"
							+"<div class='order-status'><span class='order-summary order-summary-"+this.order_no+"'></span><span class='status'>"+status+"</span></div>"
							+"<div class='menu-summary order-menu-"+this.order_no+"'></div>"
							+"<div class='order-address'>주   소 :"+this.order_address+"</div>"
							+"<div class='order-request'>요청사항 : "+this.order_request+"</div>"
							+"</div>"
							+"<div class='button-set col-md-2'>";
							if(order_status == "wait"){
								str+="<div class='btn btn-receipt' onclick='goIng("+this.order_no+")'>접수</div>";
							}
							else if(order_status == "ing"){
								str+="<div class='btn btn-receipt' onclick='goDone("+this.order_no+")'>완료</div>";
							}
							str +="</div>" 				
								+"</div>";
						$(".order-panel").html(str);
						// 해당 주문의 메뉴 내역 출력 
						$.getJSON("/order/"+this.order_no ,function(item){
							// 메뉴 들어갈 문자열
							var total_menu = "";
							if(item.length != 0){
								// 해당 주문에 들어있는 메뉴 개수만큼 반
								$(item).each(function(){
									total_menu += this.menu_name + " " + this.quantity + "개  "; 
									total_quantity += this.quantity;
									total_price += this.menu_price;
								});
								// 주문 요약 ex) [메뉴1개 ] 33000원 
								summary += "[메뉴 "+total_quantity+"개] "+ total_price +"원";
								//alert(order_no + ":" +summary);
								// 해당 order_no에 대한 메뉴들을 입력 
								$(".order-menu-"+order_no).html(total_menu);
								// 해당 order_no에 대한 주문 요약을 입력 
								$(".order-summary-"+order_no).html(summary);
							}// if 문 종료
						});// 메뉴 가지고 오는 getJson문 종료 
					});
				}// if문(result 값이비어있는지 확인) 종료
				else{
					$(".order-panel").hide();
					$(".no-order").show();
				}
			}
		});
	});
});
</script>
	<div class="order-contet">
		<div class="order-title">주문 현황</div>
		<div class="order-menu row">
			<div class="order-menutab col-md-4 new-order" id="wait">주문 요청</div>
			<div class="order-menutab col-md-4 ing" id="ing">조리 중</div>
			<div class="order-menutab col-md-4 done" id="done">완료</div>
		</div>
		<div class="order-panel">
		</div>
		<div class="no-order">
			<div class="no-list">내역이 없습니다.</div>
		</div>
	</div>
<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>