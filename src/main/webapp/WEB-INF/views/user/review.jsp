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
/* 리뷰 파일 업로드 */
.review-file{
	width : 100%;
	text-align : center;
	padding : 20px;
	
}
/* 파일 넣을 공간 */
.fileDrop{
	padding : 30px;
	background : #fff;
	width : 100%;
	height : 200px;
	border : 1px solid #999;
}
.fileDrop-title{
	font-size : 160%;
	padding : 10px;
	
}
.camera-icon{
	font-size : 200%;
	padding : 10px;
}
</style>
<script>
function checkImageType(fileName){
	var pattern = /jpg$|gif$|png$|jpeg$/i;
	
	return fileName.match(pattern);
}
function getOriginalName(fileName){
	if(checkImageType(fileName)){
		return;
	}
	var idx = fileName.indexOf("_") + 1;
	return fileName.substr(idx);
}
function getImageLink(fileName){
	if(!checkImageType(fileName)){
		return;
	}
	// /년/월/일 -> 경로 추출을 위함 
	var front = fileName.substr(0, 12);
	//	파일 앞의 s_ 를 제거하기위함.
	var end = fileName.substr(14);
	return front + end;
}
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
		var review_img = $(".review_img").val();
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
				star : star,
				review_img : review_img
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
	// 파일 업로드를 위함
	$(".fileDrop").on("dragenter dragover", function(event){
		// 기본 동작이 작동하지 않도록 설정 
		event.preventDefault();
	});
	$(".fileDrop").on("drop", function(event){
		// 기본 동작이 작동하지 않도록 설정 
		event.preventDefault();
		// 전달된 파일의 데이터를 가져옴 
		var files = event.originalEvent.dataTransfer.files;
		
		var file = files[0];
		//alert(file.name);
		//console.log(file);
		var formData = new FormData();
		
		formData.append("file", file);
		
		$.ajax({
			url : '/review/uploadImage',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data){
				var str = "";
				if(checkImageType(data)){
					str += "<div>"
						+"<a href='displayFile?fileName="+getImageLink(data)+"'>"
						+"<img src='displayFile?fileName="+data+"'/>"
						+"</a><small data-src="+data+">X</small></div>";
					alert(data);
				}
				$(".review_img").val(getImageLink(data));
				$(".fileDrop").hide();
				$(".uploadedList").append(str);
			}
		});
	});
	$(".uploadedList").on("click","small", function(event){
		var that = $(this);
		
		$.ajax({
			url:"deleteFile",
			type:"POST",
			data : {fileName:$(this).attr("data-src")},
			dataType : "text",
			success : function(result){
				if(result == 'deleted'){
					that.parent("div").remove();
					$(".fileDrop").show();
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
				<input type="hidden" class="review_img" value="">
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
			<div class="review-file">
				<div class="fileDrop">
					<div class="fileDrop-title">첨부파일을 드래그해주세요.</div>
					<i class="glyphicon glyphicon-camera camera-icon"></i>
				</div>
				<div class="uploadedList"></div>
			</div>
			<div class="submitbtn">
				<div class="btn btn-default btn-review">리뷰 등록</div>
			</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/user_footer.jsp" %>