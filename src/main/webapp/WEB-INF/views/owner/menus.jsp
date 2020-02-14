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
.list{
	border : 1px solid #d7dbe6;
	padding : 0px;
}

.menu-list-title{
	background : #fff;
	text-align : center;
	padding: 18px 28px;
	height : 70px;
	font-size : 22px;
	border-bottom : 1px solid #d7dbe6;
}
.menu-group-list{
	padding: 20px;
	border-top: 5px solid #d7dbe6;
	background : #f8f9fa;
	font-size: 20px;
}
.menu-list{
	background : #fff;
	padding: 10px 20px;
	border-top: 1px solid #d7dbe6;
	font-size : 12px;
}
.menu-list-name{
	font-size:16px;
}
.menu-list-detail{
	margin : 5px 0px;	
}
.input-menu{
	
	padding : 0px 10px 10px 10px;
}
.add-menu-wrap{
	border : 1px solid #d7dbe6;
}
.add-menu-title{
	text-align : center;
	font-size :20px;
	border-bottom : 1px solid #d7dbe6;
	padding : 18px 20px;
}
.add-form{
	padding : 10px
}
.form-control{
	margin-bottom : 10px;
}
.btn-add{
	width: 100%;
    height: 40px;
    border-radius: 0;
    background-color: #f0001e;
    font-size: 15px;
    color: #FFF;
    margin-top: 7px;
}
.menu-type{
	margin : 5px 0px;
}
</style>
<div class="home-content">
	<div class="menu-content row">
		<div class="list col-md-6">
			<div class="menu-list-title"><strong>[식당명] - 메뉴</strong></div>
			<div class="menu-group-list">대표메뉴</div>
			<div class="menu-list">
				<div class="menu-list-name">야채곱창</div>
				<div class="menu-list-detail">상세 내용</div>
				<div class="menu-list-price">15000원</div>
			</div>
			<!-- <c:if test="메뉴 그룹이 있으면">
				<c:forEach  items="">
					<div class="menu-group-list"></div>
				</c:forEach>
				<c:if test="해당 그룹에 메뉴가 있으면 ">
					<c:forEach items="">
						<div class="menu-list"></div>
					</c:forEach>
				</c:if>
			</c:if>-->
		</div>
		<!-- 메뉴 추가 구분 -->
		<div class="input-menu col-md-6">
		<div class="add-menu-wrap">
			<!-- 메뉴 그룹 추가 구분 -->
			<div class="add-menu-group">
				<!-- 메뉴 그룹 타이틀 -->
				<div class="add-menu-title"><strong>메뉴 그룹 추가</strong></div>
				<!-- 메뉴 그룹 추가 form -->
				<form class="add-group-form add-form" method="post" action="/owner/menugrop">
					<input type="text" class="form-control" name="group_name" placeholder="메뉴 그룹 (ex. 대표메뉴)">
					<button type="submit" class="btn-add">메뉴 그룹 등록</button>
				</form>
			</div>
			<!-- 메뉴 추가 구분 -->
			<div class="add-menu">
				<!-- 메뉴 추가 타이틀 -->
				<div class="add-menu-title" style="border-top : 1px solid #d7dbe6;"><strong>메뉴 추가</strong></div>
				<!-- 메뉴 추가 form -->
				<form class="add-menu-form add-form" method="post" action="/owner/menu">
					<div class="menu-type">
						<label>메뉴 그룹</label>
						<select class="menu-group-select form-control" name="menu_group"></select>
					</div>
					<div class="menu-type">	
						<label>메뉴 정보</label>
						<input type="text" class="form-control" name="menu_name" placeholder="메뉴명 (ex. 떡볶이)">
						<div class="input-group">
						<input type="text" class="form-control" name="menu_price" placeholder="메뉴가격 (ex. 5000)" aria-describedby="sizing-addon2">
						<span class="input-group-addon" id="sizing-addon2">원</span>
						</div>
					</div>
					<div class="menu-type">
						<label>메뉴 구성</label>
						<textarea class="form-control" name="menu_component" rows="2" placeholder="(ex. 피자 + 파스타 + 탄산음료)"></textarea>
					</div>
					<div class="menu-type">
						<label>메뉴 설명</label>
						<textarea class="form-control" name="menu_info" rows="2" placeholder="(ex. 다양한 토핑의 조화로 인기가 가장 많은 메뉴)"></textarea>
						<button type="submit" class="btn-add">메뉴 등록</button>
					</div>
				</form>
			</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>