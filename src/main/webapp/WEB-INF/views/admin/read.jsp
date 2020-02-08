<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<h2>온라인 입점 신청</h2>
	<p>운영중인 음식점을 요기요에 신청하세요. 온라인 입점신청 중 어려움이 있으시면 고객센터(1661-5270)로 연락주세요</p>
	<form method="post">
	<div>
		<table>
			<tr>
				<th>사업자 번호</th>
				<td><input type="text" value="${ownerVO.owner_number }" name="owner_number"/></td>
			</tr>
			<tr>
				<th>사업자 대표명</th>
				<td><input type="text" value="${ownerVO.owner_name }" name="owner_name"/></td>
			</tr>
			<tr>
				<th>휴대폰 번호</th>
				<td><input type="text" value="${ownerVO.owner_phone }" name="owner_phone"/></td>
			</tr>
		</table>
	</div>
	<div>
		<table>
			<tr>
				<th>식당명</th>
				<td><input type="text" value="${resVO.res_name } " name="res_name" ></td>	
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="res_tel" value="${resVO.res_tel }"></td>
			</tr>
			<tr>
				<th>Category</th>
				<td>
					<input type="text" name="res_tel" value="${resVO.category }">
				</td>
			</tr>
			<tr>
				<th>음식점 주소</th>
				<td>
				<label style="border:1px solid black">${resVO.res_postcode }</label>
				<input type="text" name="res_postcode" id="res_postcode" placeholder="우편번호" readonly="readonly">
				<input type="text" name="res_address" id="res_address" placeholder="주소" readonly="readonly"><br>
				<input type="text" name="res_extraAddress" id="res_extraAddress" placeholder="참고항목">
				<input type="text" name="res_detailAddress" id="res_detailAddress" placeholder="상세주소">
				<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
				</td>
			</tr>
		</table>
		</div>
	</form>
</div>
</body>
</html>