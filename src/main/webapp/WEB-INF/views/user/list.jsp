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
.res-name{
	font-weight : bold;
}
.total-star{
	color : #ffa800;
	font-size : 110%;
}
.res-detail-info{
	width:50%;

}
.thumbnail{
	width : 70px;
	height : 70px;
	margin : 0px;
}
.payment{
	font-weight : bold;
	color : #f0001e;
}
</style>
<script>
function getReview(res_no){
	// ajax로 처리
	$.getJSON("/review/list/"+res_no, function(data){
		var total_star = 0;
		if(data.length != 0){
			$(data).each(function(){
				total_star += this.star;
			});
			$(".total-star-"+res_no).html((total_star/data.length).toFixed(1));
			$(".review-count-"+res_no).html(data.length);
		}
	});
}
function getReply(res_no){
	// ajax로 처리
	$.ajax({
		type : 'POST',
		url : '/reply/count',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			res_no : res_no
		}),
		success : function(result){
			//alert(result);
			if(result != 0){
				$(".reply-count-"+res_no).html(result);
			}
		}
	});
}
function getOperation(res_no){
	// ajax로 처리
	$.ajax({
		type : 'POST',
		url : '/restaurant/getOperation',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			res_no : res_no
		}),
		success : function(result){
			if(result.length != 0){
				var obj = JSON.parse(result);
				$(".minimum-price-"+res_no).html(obj.minimum_price);
				if(obj.pay_here == 1){
					$(".payment-"+res_no).html("여기서결제");	
				}
			}
		}
	});
}
</script>
<div class="main-container">
	<!-- 식당 리스트 출력 -->
	<div class="row res-list">
		<!-- 식당 내용 출력 -->
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
								<div class="res-review" style="font-size:11px"><span class="total-star">★<span class="total-star-${resVO.res_no }">0.0</span></span><span> 리뷰 <span class="review-count-${resVO.res_no }">0</span>개 </span><span> | 사장님 댓글 <span class="reply-count-${resVO.res_no }">0</span>개</span></div>
								<div class="order-info" style="font-size:11px"><span class="payment payment-${resVO.res_no }">여기서결제</span><span> | <span class="minimum-price-${resVO.res_no }">10000</span> 이상 배달 가능</span></div>
								<div class="event-info" style="font-size:11px"><span></span></div>
							</td>
							<td>
							</td>
						</tr>	
					</table>
				</div>
			</div>
			<script>
				$(document).ready(function(){
					getReview(${resVO.res_no});
					getReply(${resVO.res_no});
					getOperation(${resVO.res_no});	
				});
			</script>
		</c:forEach>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>