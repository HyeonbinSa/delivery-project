<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/resources/css/yogiyo.css">
<script src="/resources/js/addressapi.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- 식당 입점 신청 start -->
<div>
	<h2>온라인 입점 신청</h2>
	<p>운영중인 음식점을 요기요에 신청하세요. 온라인 입점신청 중 어려움이 있으시면 고객센터(1661-5270)로 연락주세요</p>
	<form method="post">
	<div>
		<table>
			<tr>
				<th>사업자 번호</th>
				<td><input type="text" name="owner_number"/></td>
			</tr>
			<tr>
				<th>사업자 대표명</th>
				<td><input type="text" name="owner_name"/></td>
			</tr>
			<tr>
				<th>휴대폰 번호</th>
				<td><input type="text" name="owner_phone"/></td>
			</tr>
		</table>
	</div>
	<div>
		<table>
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
				</td>
			</tr>
			<tr>
				<th>음식점 주소</th>
				<td>
				<input type="text" name="res_postcode" id="res_postcode" placeholder="우편번호" readonly="readonly">
				<input type="text" name="res_address" id="res_address" placeholder="주소" readonly="readonly"><br>
				<input type="text" name="res_extraAddress" id="res_extraAddress" placeholder="참고항목">
				<input type="text" name="res_detailAddress" id="res_detailAddress" placeholder="상세주소">
				<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
				</td>
			</tr>
		</table>
		</div>
		 <button type="submit">입점 신청</button>
	</form>
</div>
</body>
</html>