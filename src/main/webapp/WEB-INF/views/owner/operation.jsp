<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/owner_header2.jsp" %>
<!-- 식당 운영 정보 페이지 -->
<!-- 
	- 식당 넘버, 식당 이름, 식당 전화번호, 입점일, 카테고리, 영업 시작 시간, 영업 종료 시간, 주소
	1. 영업시간 
	2. 최소 주문 금액 설정
	3. 결제수단 설정 / 현금, 신용카드, 바로결제 
 -->
 <style>
.home-content{
	width:100%;
	padding-top:20px;
	background : #fafafa;
	height: 100%;
	overflow:auto;
}
.res-information{
	margin-bottom : 50px;
}
.res-information-title{
	padding-left:30px;
}
.title{
	font-size:180%;	
}
.res-information-table{
	width:100%;
}
tr{
	border-bottom : 1px solid #d9d9d9;
}
th,td{
	padding : 20px 20px;
}
th{
	font-size: 120%;
}
.table-title{
	font-size: 200%;
    padding: 10px 40px;
    font-weight: bold;
}
.res-time{
	margin-left:0px;
	background : #fafafa;
}
.col-md-2{
	text-align : center;
	font-size : 15px;
}
.input-group {
	width:30%;
}
.non-update{
	border : none;
	background : none;
}
.form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control {
	background : white;
	outline : none;
}
.btn-modify{
	width: 100%;
    height: 40px;
    border-radius: 0;
    background-color: #f0001e;
    font-size: 15px;
    color: #FFF;
    margin-top: 7px;
}
.fileDrop{
	float : left;
	background : #fff;
	border : 1px dotted #999;
	text-align :center;
	padding : 20px;	
	width : 80px;
	height : 80px;
	vertical-align:center;
}
.uploadImage{
	margin-right : 10px;
	float :left;
	width : 80px;
	height : 80px;
}
.thumbnail{
	width : 80px;
	height : 80px;
}
.payment-check{
	margin : 0px 5px;
}
</style>
<script>
var result = "${result}";
 
if(result == "ModifySuccess"){
	alert("가게 정보가 수정되었습니다.");
}else if(result == "operationSuccess"){
	alert("가게의 운영 정보가 수정되었습니다.");
}
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
		return front +"s_"+ end;
	}
$(document).ready(function(){	
	//파일 업로드를 위함
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
			url : '/owner/uploadThumb',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data){
				var str = "";
				if(checkImageType(data)){
					$(".thumbnail").attr("src", "displayFile?fileName="+data);
					$(".res_thumbnail").val(data);
				}
				//$(".review_img").val(getImageLink(data));
				//$(".fileDrop").hide();
				//$(".uploadImage").html(str);
			}
		});
	});
});
 </script>
 <div class="home-content">
 	<div class="res-information">
 		<div class="res-information-title"><span class="title"><strong>${resVO.res_name }</strong></span><span> - 식당 정보</span></div>
 		<hr>
 		<!-- 가게 기본 정보 입력 -->
 		<form method="post" action="/owner/modifyinfo">
 		<input type="hidden" class="res_thumbnail" name="res_thumbnail" value="">
 		<table class="res-information-table">
 			<colgroup>
 				<col width="20%">
 				<col width="80%">
 			</colgroup>
 			<tr>
 				<td class="table-title" colspan=2>기본 정보</td>
 			</tr>
 			<tr>
 				<th>가게 썸네일</th>
 				<td>
 					<div class="uploadImage">
 						<c:if test="${resVO.res_thumbnail != null }">
 							<img class='thumbnail' src="displayFile?fileName=${resVO.res_thumbnail }">
 						</c:if>
 						<c:if test="${resVO.res_thumbnail == null }">
 							<img class='thumbnail' src='../resources/image/no_image.png'/>
 						</c:if>
					</div>
 					<div  class="fileDrop">
						<i class="glyphicon glyphicon-edit camera-icon"></i>
					</div>
				</td>
 			</tr>
 			<tr>
 				<th>가게번호</th>
 				<td><input type="text" class="non-update form-control" name="res_no" readonly="readonly" value="${resVO.res_no }"></td>
 			</tr>
 			<tr>
 				<th>가게명</th>
 				<td><input type="text" class="non-update form-control" name="res_name" readonly value="${resVO.res_name }"></td>
 			</tr>
 			<tr>
 				<th>가게 카테고리</th>
 				<td><input type="text" class="non-update form-control" name="category" readonly value="${resVO.category }"></td>
 			</tr>
 			<tr>
 				<th>전화번호</th>
 				<td><input type="text" class="form-control" name="res_tel" value="${resVO.res_tel }"></td>
 			</tr>
 			<tr>
 				<th>가게 주소</th>
 				<td><input type="text" class="non-update form-control" readonly value="${resVO.res_address }"></td>
 			</tr>
 			<tr>
 				<th>가게 소개</th>
 				<td><textarea class="form-control" name="res_intro" rows="2"  placeholder="가게 소개를 입력해주세요.">${resVO.res_intro }</textarea></td>
 			</tr>
 			<tr>
 				<td colspan=2><button class="btn-modify" type="submit">가게 정보 수정</button></td>
 			</tr>
 			<tr>
 				<td class="table-title" colspan=2>운영 정보</td>
 			</tr>
 			</table>	
 		</form>
 		<!-- 운영 정보 입력 -->
 		<form method="post" action="/owner/modifyoperation">
 			<input type="hidden" name="res_no" value="${resVO.res_no}">
 			<input type="hidden" name="res_payment" value="">
 			<table class="res-information-table">
	 			<colgroup>
	 				<col width="20%">
	 				<col width="80%">
	 			</colgroup>
	 			<tr>
	 				<th>영업 시간</th>
	 				<td>
	 					<div class="res-time row">
		 					<div class="col-md-2"><strong>시작 시간</strong></div>
		 					<div class="col-md-4"><input type="time" name="start_time" class="form-control" value="${operationVO.start_time }"></div>
		 					<div class="col-md-2"><strong>종료 시간</strong></div>
		 					<div class="col-md-4"><input type="time" name="end_time" class="form-control" value="${operationVO.end_time }"></div>
	 					</div>
	 				</td>
	 			</tr>
	 			<tr>
	 				<th>최소 주문 금액</th>
	 				<td>
	 					<div class="input-group">
	 					<input type="text" class="form-control" name="minimum_price" value="${operationVO.minimum_price }" placeholder="메뉴가격 (ex. 5000)" aria-describedby="sizing-addon2">
						<span class="input-group-addon" id="sizing-addon2">원</span>
						</div>
					</td>
	 			</tr>
	 			<tr>
	 				<th>결제 방식</th>
	 				<td>
	 					<label class="payment-check">
							<input type="checkbox"> 여기서 결제
						</label>
						<label class="payment-check">
							<input type="checkbox"> 현금결제
						</label>
						<label class="payment-check">	
							<input type="checkbox"> 신용카드
						</label>	
					</td>
	 			</tr>
	 			<tr>
	 				<td colspan=2><button class="btn-modify" type="submit">운영 정보 수정</button></td>
	 			</tr>
 			</table>
 		</form>
 	</div>
 </div>

<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>