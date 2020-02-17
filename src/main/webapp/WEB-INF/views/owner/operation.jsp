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
 </style>
 <script>
 var result = "${result}";
 
 if(result == "ModifySuccess"){
	 alert("가게 정보가 수정되었습니다.");
 }else if(result == "operationSuccess"){
	alert("가게의 운영 정보가 수정되었습니다.");
 }
 </script>
 <div class="home-content">
 	<div class="res-information">
 		<div class="res-information-title"><span class="title"><strong>${resVO.res_name }</strong></span><span> - 식당 정보</span></div>
 		<hr>
 		<!-- 가게 기본 정보 입력 -->
 		<form method="post" action="/owner/modifyinfo">
 		<table class="res-information-table">
 			<colgroup>
 				<col width="20%">
 				<col width="80%">
 			</colgroup>
 			<tr>
 				<td class="table-title" colspan=2>기본 정보</td>
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
	 				<td colspan=2><button class="btn-modify" type="submit">운영 정보 수정</button></td>
	 			</tr>
 			</table>
 		</form>
 	</div>
 </div>

<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>