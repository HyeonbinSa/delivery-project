<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/user_header.jsp" %>
<style>
.searchbox{
	height:100px;
	padding-top:30px;
	padding-bottom:30px;
}
.review-wrap{
	width:100%;
	padding : 1% 10%;
}
/* 리뷰 제목 */
.review-title{
	border-bottom : 1px solid #e6e6e6;
	padding : 20px;
	font-size: 200%;
	font-weight : bold;
	color : white;
	background : #333;
}
/*식당명 */
.res-name{
	border-bottom : 1px solid #e6e6e6;
 	padding : 10px;
 	font-size: 180%;
 	font-weight : bold;
}
/* 리뷰 내용 */
.review-container{
	border : 1px solid #e6e6e6;
	padding : 20px;
	background: #e6e6e6;
}
/* 별 모양 css */
.star-set{
	color: white;
    text-shadow:-1px 0 gray,0 1px gray,1px 0 gray,0 -1px gray;
}
.star-set span.on{
	text-shadow:-1px 0 yellow,0 1px yellow,1px 0 yellow,0 -1px yellow;
	color : yellow;
}
.review-star{
	padding: 10px;
	font-size:160%;
}
.star-title{
	font-weight : bold;
}
.review-text{
	padding : 10px;
}
.text-limit{
	overflow : auto;
}
.limit-text{
	font-size : 120%;
	padding : 0px 20px;
	float:right;
}
.btn-review{
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
	// 별 체크한 만큼 노란색 별표시 하기 위함 
	$('.star-set span').click(function(){
         $(this).parent().children("span").removeClass("on");   
         $(this).addClass("on").prevAll("span").addClass("on");
         $(".star").val($(this).attr("id"));
         return false;
     });
	// 리뷰 입력 시 글자수 확인 
	$(".review-content").on("keyup", function(){
		var content = $(this).val();
		$(".limit-text").html(content.length+"/300");
	});
	$(".btn-review").on("click", function(){
		var res_name = $(".res-name").html();
		var res_no = $(".res_no").val();
		var member_no = $(".member_no").val();
		var member_nickname = $(".member_nickname").val();
		var order_no =  Number($(".order_no").val());
		var review_content =  $(".review-content").val();
		var star = $(".star").val();
		$.ajax({
			type : 'post',
			url : '/review/add',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				res_name : res_name,
				member_nickname : member_nickname,
				res_no : res_no,
				member_no : member_no,
				order_no : order_no,
				review_content : review_content,
				star : star
			}),
			success : function(result){
				if(result == 'ADDREVIEW'){
					// order 업데이트(리뷰 작성했다고)
					$.ajax({
						type : 'post',
						url : '/order/addReview',
						headers : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "POST"
						},
						dataType : 'text',
						data : JSON.stringify({
							order_no : order_no,
						}),
						success : function(result){
							if(result == "REVIEWUPDATE"){
								// 마이페이지로 이동
								$(location).attr("href", "/user/mypage")
								alert("리뷰가 등록되었습니다.");
							}
						}
					});
					
				}
			}
		});
	});
});
</script>
<div class="review-wrap">
	<div class="review-title">리뷰 작성</div>
	<div class="review-container">
			<div class="res-name">${res_name }</div>
			<div class="review-star">
				<!-- 최소 1점 -->
				<input type="hidden" class="star" class="star-rate" value="1">
				<input type="hidden" class="order_no" value="${orderVO.order_no}">
				<input type="hidden" class="member_no" value="${login.member_no }" >
				<input type="hidden" class="member_nickname" value="${login.member_nickname }" >
				<input type="hidden" class="res_no" value="${orderVO.res_no }" >
				<span class="star-title">별점 : </span>
				<span class="star-set">
					<span class="glyphicon glyphicon-star on" id="1"></span>
					<span class="glyphicon glyphicon-star" id="2"></span>
					<span class="glyphicon glyphicon-star" id="3"></span>
					<span class="glyphicon glyphicon-star" id="4"></span>
					<span class="glyphicon glyphicon-star" id="5"></span>
				</span>
			</div>
			<div class="review-text">
				<textarea name="review_content" class="form-control review-content" maxlength="300" rows="5"></textarea>
				<div class="text-limit"><span class="limit-text">0/300</span></div>
			</div>
			<div class="submitbtn">
				<div class="btn btn-default btn-review">리뷰 등록</div>
			</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>