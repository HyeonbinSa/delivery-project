<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/resources/css/yogiyo.css">
<script src="/resources/js/addressapi.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<div class="join-wrap ng-scope">
<form id="form" method="post" >
	<strong class="tit ng-binding">식당 정보</strong>
	<ul class="list-group">
		<li class="list-group-item">
		<label>식당명</label>
		<input type="text" placeholder="(필수)식당명 등록" name="res_name" >
		</li>
		<li class="list-group-item">
		<label>전화번호</label>
		<input type="text" name="res_tel" placeholder="(필수) 가게 전화 번호">
		</li>
		<!--  <li class="list-group-item">
		<label>사업자대표명</label>
		<input type="text" placeholder="(필수)대표명 등록" name="res_owner" >
		</li>-->
		<li class="list-group-item">
		<label>Category</label>
		<select name="category">
			<option value="dish" selected>1인분 주문</option>
			<option value="franchise">프랜차이즈</option>
			<option value="chicken">치킨</option>
			<option value="western">피자/양식</option>
			<option value="korean">한식</option>
			<option value="japan">일식/돈까스</option>
			<option value="pig">족발/보쌈</option>
			<option value="night">야식</option>
			<option value="snacm">분식</option>
			<option value="cafe">카페/디저트</option>
			<option value="conv">편의점</option>
		</select>
		</li>
		<li class="list-group-item">
		<label>영업 시작 시간</label><p>
		<input style="width:250px	" value="09:00" 	type="time" name="startTime" >
		<p><label>영업 종료 시간</label><p>
		<input style="width:250px" value="23:00" type="time" name="endTime" >
		</li>
		
	<!--<li class="list-group-item">
		<label>사업자번호</label>
		<input type="text" name="owner_number" placeholder="(필수) 사업자번호">
		</li>-->
		<li class="list-group-item">
			<input type="text" name="res_postcode" id="res_postcode" placeholder="우편번호" readonly="readonly">
			<input type="text" name="res_address" id="res_address" placeholder="주소" readonly="readonly"><br>
			<input type="text" name="res_extraAddress" id="res_extraAddress" placeholder="참고항목">
			<input type="text" name="res_detailAddress" id="res_detailAddress" placeholder="상세주소">
			<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
		</li>
	</ul>
	<button class="btn btn_join" type="submit" >식당 등록</button>
</form>
</div>
</body>
</html>