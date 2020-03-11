<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/owner_header2.jsp" %>
<style>
.home-content{
	width:100%;
	height:100%;
	background: #fff;
	border:1px solid #fafafa;
	overflow:auto;
}
.btn-register{
	border: none;
    background-color: #DC1400;
    width: 100%;
    height: 54px;
    color: #FFF;
    font-size: 14px;
    font-weight: bold;
    margin-top: 10px;
}
.fileDrop{
	float :left;
	width: 100px;
	height : 140px;
	border : 1px dotted #999;
	text-align : center;
	padding :20px;
}
.camera-icon{
	vertical-align : center;
}
.uploadedList{
	float :left;
	width: 100px;
	height : 140px;
	display:none;
}
</style>
<script type="text/javascript" src="/resources/js/addressapi.js"></script>
<script>
var result = "${result}";
if(result == "fail"){
	alert("입력하신 정보가 확인되지 않습니다. 다시 확인해 주시기 바랍니다. (문의 전화 : 고객만족센터 1661-5270)");
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
	return front + end;
}
$(document).ready(function(){
	//파일 업로드를 위함
	$(".fileDrop").on("dragenter dragover", function(event){
		// 기본 동작이 작동하지 않도록 설정 
		event.preventDefault();
	});
	$(".fileDrop1").on("drop", function(event){
		// 기본 동작이 작동하지 않도록 설정 
		event.preventDefault();
		// 전달된 파일의 데이터를 가져옴 
		var files = event.originalEvent.dataTransfer.files;
		
		var file = files[0];
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
					str += "<div>"
						+"<a href='displayFile?fileName="+getImageLink(data)+"'>"
						+"<img src='displayFile?fileName="+data+"'/>"
						+"</a></div>";
					alert(data);
				}
				$(".registration_img").val(getImageLink(data));
				$(".fileDrop1").hide();
				$(".uploadedList1").append(str);
				$(".uploadedList1").show();
			}
		});
	});
	$(".fileDrop2").on("drop", function(event){
		// 기본 동작이 작동하지 않도록 설정 
		event.preventDefault();
		// 전달된 파일의 데이터를 가져옴 
		var files = event.originalEvent.dataTransfer.files;
		
		var file = files[0];
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
					str += "<div>"
						+"<a href='displayFile?fileName="+getImageLink(data)+"'>"
						+"<img src='displayFile?fileName="+data+"'/>"
						+"</a></div>";
					alert(data);
				}
				$(".permit_img").val(getImageLink(data));
				$(".fileDrop2").hide();
				$(".uploadedList2").append(str);
				$(".uploadedList2").show();
			}
		});
	});
});
</script>
<!-- 입점 신청 start -->
<div class="home-content">
<h2>온라인 입점 신청</h2>
<p>운영중인 음식점을 요기요에 신청하세요. 온라인 입점신청 중 어려움이 있으시면 고객센터(1661-5270)로 연락주세요</p>
<hr>
	<form method="post">
	<input type="hidden" name="permit_img" class="permit_img" value="">
	<input type="hidden" name="registration_img" class="registration_img" value="">
	<div>
		</div>
		<h3>사업자 정보</h3>
		<table class="table table-striped">
		<colgroup>
		<col style="width:30%">
		<col style="width:70%">
		</colgroup>
			<tr>
				<th>사업자 번호</th>
				<td><input type="text" class="form-control" name="owner_number"/></td>
			</tr>
			<tr>
				<th>사업자 대표명</th>
				<td><input type="text" name="owner_name"/></td>
			</tr>
			<tr>
				<th>사업자등록증 사본등록</th>
				<td>
					<div class="uploadedList uploadedList1"></div>
					<div class="fileDrop fileDrop1">
						<p> 첨부파일 드래그 </p>
						<i class="glyphicon glyphicon-camera camera-icon"></i>
					</div>
				</td>
			</tr>
			<tr>
				<th>영업신고증 사본등록</th>
				<td>
					<div class="uploadedList uploadedList2"></div>
					<div class="fileDrop fileDrop2">
						<p> 첨부파일 드래그 </p>
						<i class="glyphicon glyphicon-camera camera-icon"></i>
					</div>
				</td>
			</tr>
			<tr>
				<th>휴대폰 번호</th>
				<td><input type="text" name="owner_phone"/></td>
			</tr>
		</table>
		<h3>식당 정보</h3>
		<table class="table table-striped">
		<colgroup>
		<col style="width:30%">
		<col style="width:70%">
		</colgroup>
			<tr>
				<th>식당명</th>
				<td><input type="text" placeholder="(필수)식당명 등록" name="res_name" ></td>	
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="res_tel" placeholder="(필수) 가게 전화 번호"></td>
			</tr>
			<tr>
				<th>Category</th>
				<td>
				<select name="category">
					<option value="1인분" selected>1인분 주문</option>
					<option value="프랜차이즈">프랜차이즈</option>
					<option value="치킨">치킨</option>
					<option value="피자/양식">피자/양식</option>
					<option value="한식">한식</option>
					<option value="일식">일식/돈까스</option>
					<option value="족발/보쌈">족발/보쌈</option>
					<option value="야식">야식</option>
					<option value="분식">분식</option>
					<option value="카페/디저트">카페/디저트</option>
					<option value="편의점">편의점</option>
				</select>
				</td>
			</tr>
			<tr>
				<th>음식점 주소<em>*</em></th>
				<td>
				<input type="text" name="res_postcode" id="res_postcode" placeholder="우편번호" readonly="readonly">
				<input type="text" name="res_address" id="res_address" placeholder="주소" readonly="readonly"><br>
				<input type="text" name="res_extraAddress" id="res_extraAddress" placeholder="참고항목">
				<input type="text" name="res_detailAddress" id="res_detailAddress" placeholder="상세주소">
				<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit" class="btn btn-default btn-register">입점 신청</button></td>
			</tr>
		</table>
		
	</form>
		</div>
<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>