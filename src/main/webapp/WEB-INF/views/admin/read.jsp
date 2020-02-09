<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/owner_header.jsp" %>
<style>
.form-inline, .form-group{
	margin:5px;
}
</style>
<div class="container">
<h2><strong>${resVO.res_name}</strong> - 입점 신청</h2>
<hr>
	<form method="post">
	<input type="hidden" name="res_no">
	<input type="hidden" name="owner_vo">
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
				<td><strong>${ownerVO.owner_number }</strong></td>
			</tr>
			<tr>
				<th>사업자 대표명</th>
				<td><strong>${ownerVO.owner_name }</strong></td>
			</tr>
			<tr>
				<th>휴대폰 번호</th>
				<td><strong>${ownerVO.owner_phone }</strong></td>
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
				<td><strong>${resVO.res_name }</strong></td>
			</tr>
			<tr>
				<th>식당 전화번호</th>
				<td><strong>${resVO.res_tel }</strong></td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td><strong>${resVO.category }</strong></td>
			</tr>
			<tr>
				<th><br>식당 주소</th>
				<td><span>${resVO.res_postcode }</span>
					<br><strong>${resVO.res_address}</strong>
					<br><strong>${resVO.res_extraAddress}</strong>
					<span>${resVO.res_detailAddress}</span>
				</td>	
			</tr>
		</table>
	</form>
</div>
</body>
</html>