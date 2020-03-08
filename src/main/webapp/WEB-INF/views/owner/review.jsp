<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/owner_header2.jsp" %>
<style>
.home-content{
	width:100%;
	height:100%;
	border:1px solid #fafafa;
	overflow:auto;
}

.main-content {
	padding : 0px;
}
.review-wrap{
	margin : 0px;
	padding : 20px;
	
}
.review-item{
	padding : 20px;
	border : 1px solid #999;
	margin : 10px 5px;
	border-radius : 5px;
}
/* 리뷰 안에 있는 내용 CSs*/
.review-member{
	overflow : hidden;
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
.owner-review{
	padding : 0px;
	position : fixed;
	right: 10px;
}
.reply-title{
	padding : 10px;
	background : #333;
	color : white;
	font-size : 170%;
	margin-top: 10px;
}
.reply-container{
	border : 1px solid #e6e6e6;
	padding : 10px;
	text-align : center;
}
.form-control{
	margin:0px;
	margin-bottom : 10px;
}
.btn-owner-reply{
	width : 50%;
	background : red;
	font-size : 140%;
	font-weight : bold;
	color : #fff;
	text-align : center;
}
.btn-reply{
	float : right;
	font-size: 60%;
	padding :8px;
	border : 2px solid red;
	border-radius : 5px;
	color : red;
	margin : 0px;
	top : 0px;
}
.btn-reply-edit{
	float : right;
	font-size: 60%;
	padding :8px;
	border : 2px solid blue;
	border-radius : 5px;
	color : blue;
	margin : 0px;
	top : 0px;
}
.active{
	box-shadow: 0px 0px 7px 2px red;
}
.modify{
	box-shadow: 0px 0px 7px 2px blue;
}
.btn-modify{
	width : 50%;
	background : blue;
	font-size : 140%;
	font-weight : bold;
	color : #fff;
	text-align : center;
	display:none;
}
.owner-reply{
	border-radius : 5px;
	background : #e6e6e6;
	border : 1px solid #999;
	padding : 10px;
}
</style>
<script>
// 사장님 답변이 없는 리뷰에서 답변 남기기 버튼
function goReply(review_no){
	// hidden input에 review_no 를 넣어둠 
	$(".review_no").val(review_no);
	// reivew-item에  active, modify 클래스 모두 제거
	$(".review-item").removeClass("active");
	$(".review-item").removeClass("modify");
	// 해당 아이템에 active 클래스 추가 (빨간색 테두리 표시)
	$(".review-item-"+review_no).addClass("active");
	// 빨간색 버튼(답글달기) 표시 
	$(".btn-owner-reply").show();
	// 파란색 버튼(수정하기) 숨김 
	$(".btn-modify").hide();
	// 수정할 때 데이터가 입력될 수 있기 때문에 공백처리
	$(".reply-content").val("");
}
// 사장님 답변이 있는 리뷰에서 수정 버튼 
function goEdit(review_no){
	$(".review_no").val(review_no);
	$(".review-item").removeClass("modify");
	$(".review-item").removeClass("active");
	// 해당 아이템에 modify 클래스 추가(파란색 테두리)
	$(".review-item-"+review_no).addClass("modify");
	// 답글달기 버튼 숨기고 수정하기 버튼 표시
	$(".btn-owner-reply").hide();
	$(".btn-modify").show();
	// 클릭한 리뷰의 review_no를 받아 reply 객체 받아옴.
	$.ajax({
		type : 'POST',
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
				// textarea에 내용 넣어줌
				$(".reply-content").val(reply_content);
			}
		}
	});
}
// 리뷰 목록에서 각각의 답변 내용을 확인하기 위함 
function getReply(review_no){
	var tag = "";
	// 클릭한 리뷰의 review_no를 받아 reply 객체 받아옴.
	$.ajax({
		type : 'POST',
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
				// 비어있는 Owner-reply 태그에 내용을 넣어줌
				$(".owner-reply-"+review_no).html(reply_content);
				
			}
		}
	});
}
// 리뷰 리스트 출력 함수 
function reviewList(res_no){
	// "/review/list/식당 번호"를 통해 데이터 가져옴  
	$.getJSON("/review/list/"+res_no ,function(data){
		var str = "";
		if(data.length != 0){
			// 데이터가 들어있는 만큼 반복
			$(data).each(function(){
				// Date 형식으로 바꿔줌 
				var date = new Date(this.reg_date);
				// 리뷰를 보여줄 태그
				str+="<div class='review-item review-item-"+this.review_no+"'>"
					+"<div class='review-member'>"+this.member_nickname+"<span class='review-date'>"+date.toLocaleDateString()+"</span>";
				// 답변이 있으면 'exist' -> 수정(파란) 버튼이 생김 
				if(this.reply_status == 'exist'){
					str+="<i class='btn btn-reply-edit glyphicon glyphicon-pencil' onclick='goEdit("+this.review_no+")'>수정</i></div>";
				// 답변이 없는경우 'none' -> 답글(빨간) 버튼
				}else{
					str+="<i class='btn btn-reply glyphicon glyphicon-edit' onclick='goReply("+this.review_no+")'>답글</i></div>";
				}
				// 별점 표시 내용
				str+="<div class='review-star'><span>별점 : </span>"
					+"<span class='star-set'>";
					for(var num=1; num<=5; num++){
						if(num <= this.star){
							str+="<span class='glyphicon glyphicon-star on'></span>"
						}else{
							str+="<span class='glyphicon glyphicon-star'></span>"
						}
					}
				str+="</span>"+"</div>";
				// 리뷰에 이미지가 있을 경우
				if(this.review_img != "" && this.review_img != null){
					str+="<div class='review_img'>"+"<img class='image' src='displayFile?fileName="+this.review_img+"'/></div>";
				}
				// 리뷰 내용 출력
				str+="<div class='review-content'>"
					+this.review_content
					+"</div>";
				// 답변이 있으면 내용 출력  
				if(this.reply_status == 'exist'){
					// 내용이 없는 div 태그를 생성 
					str += "<div class='owner-reply owner-reply-"+this.review_no+"'></div>";
					// getReply 함수를 통해 답변 내용을 넣어줌 
					getReply(this.review_no);
				}
				str+="</div>";
			});
			$(".review-list").html(str);
		}
		else{
			$(".no-review").show();
		}
	});
}
$(document).ready(function(){
	var res_no = ${resVO.res_no};
	// 댓글 목록 가져요기 
	reviewList(res_no);
	// 답글 작성 후 버튼 클릭 
	$(".btn-owner-reply, .btn-modify").on("click", function(){
		var reply_content = $(".reply-content").val();
		var review_no = $(".review_no").val();
		// 답글 추가하는 메소드 
		$.ajax({
			type : 'POST',
			url : '/reply/add',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				reply_content : reply_content,
				review_no : review_no,
				res_no : res_no
			}),
			success : function(result){
				// 기존에 등록된 답글이 없기 때문에 'CREATE'
				if(result == 'CREATE'){
					// review에서 답글 여부를 수정 (있으면 'exist' 없으면 'none')
					$.ajax({
						type : 'PUT',
						url : '/review/updateStatus',
						headers : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "PUT"
						},
						dataType : 'text',
						data : JSON.stringify({
							review_no : review_no
						}),
						success : function(result){
							if(result == 'UPDATE'){
								alert("리뷰에 대한 답글을 남겼습니다.");
								// 리뷰 리스트 갱신
								reviewList(res_no);
							}
						}// 리뷰 수정 ajax, success 끝 
					});// 리뷰 수정 ajax 끝 
				// 기존에 등록된 답글이 있을 때는 controller에서 DB수정을 함(결과값 MODIFY)
				}else if(result == "MODIFY"){
					alert("답변을 수정했습니다.");
					// 리뷰 리스트 갱신
					reviewList(res_no);
				}
			}
		});
	});
});
</script>
<div class="review-wrap row">
	<div class="review-list col-md-8"></div>
	<div class="owner-review col-md-4">
		<div class="reply-title">사장님 답변</div>
		<input type="hidden" class="review_no" value="">
		<div class="reply-container">
			<textarea class="form-control reply-content" rows="5" ></textarea>
			<button type="button" class="btn btn-owner-reply">답글달기</button>
			<button type="button" class="btn btn-modify">수정하기</button>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>