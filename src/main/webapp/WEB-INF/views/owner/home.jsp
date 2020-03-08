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
	padding-top : 10px;
}
.first-content{
	width:100%;
	margin:0px;
	padding:0px;
	height:300px;
}
.home-advertise{
	height : 300px;
	background : #fff;
}
.home-login{
	background : #fff;
	height : 300px
}
.form-control{
	margin : 5px 0px;
}
.login-extra > span {
	color : #999;
	float : right;
}
.login-extra{
	margin-top : 5px;
}
.btn-login{
	border: none;
    background-color: #DC1400;
    width: 100%;
    height: 54px;
    color: #FFF;
    font-size: 14px;
    font-weight: bold;
    margin-top: 10px;
}
.btn-join{
	border: 1px solid #DC1400;
    background-color: #FFF;
    width: 100%;
    height: 54px;
    color: #DC1400;
    font-size: 14px;
    font-weight: bold;
    margin-top: 10px;
}
.join-ex{
	font-size:12px;
	color : #999;
	margin-top : 5px;
}
.second-content{
	margin:0px;
	padding:0px;
	height:300px;
	width : 100%;
}
.second-menu{
	padding:20px;
	
}
.owner-name{
	margin-top:20px;
	margin-bottom:10px;
}
.second-content{
	margin-top : 20px;
	background : #fff;
	padding : 5px 10px;
}
.slide{
	margin : 0px 12%;
}
.item>img{
	width : 100%;
}
.col-md-4{
	padding :5px;
}
.second-item{
	border : 1px solid #999;
	border-radius : 5px;
	padding : 10px;
}
</style>
	<!-- Owner Home Content -->
	<div class="home-content">
		<!-- 사장님 광고 배너 + 로그인 화면  -->
		<div class="first-content row">
			<!-- 사장님 페이지 광고 배너  -->
			<div class="home-advertise col-md-8">
				<!-- 부트스트랩 Carousel 이용 -->
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
				  </ol>
				
				  <!-- Wrapper for slides // 이미지 입력 부분 -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active">
				        <img src="/resources/owner_banner/slide-banner2.png" alt="...">
				    </div>
				    <div class="item">
				      <img src="/resources/owner_banner/slide-banner3.png" alt="...">
				    </div>
				    <div class="item">
				        <img src="/resources/owner_banner/slide-banner4.png" alt="...">
				    </div>
				    <div class="item">
				        <img src="/resources/owner_banner/slide-banner5.gif" alt="...">
				    </div>
				    <div class="item">
				        <img src="/resources/owner_banner/slide-banner6.png" alt="...">
				    </div>
				  </div>
				
				  <!-- Controls // 좌우 버튼-->
				  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
			</div>
			<!-- login 컨텐츠 -->
			<div class="home-login col-md-4">
				<!-- 로그인 세션이 있는지 확인 // 없을 경우  -->
				<c:if test="${owner_login == null}">
				<!-- Login 화면 출력  -->
				<form class="login-form" action="/owner/login" method="post">
					<input type="text" class="form-control" name="owner_id" placeholder="아이디 입력">
					<input type="password" class="form-control" name="owner_pw" placeholder="비밀번호 입력">
					<div class="login-extra">
						<label class="auto-login"><input class="check-auto" type="checkbox"> 자동 로그인</label>
						<span>아이디 찾기</span><span> | </span><span> 비밀번호 찾기</span>
					</div>
					<button class="btn btn-default btn-login" type="submit">로그인</button>
				</form>	
					<button class="btn btn-default btn-join" onclick="location.href='/owner/check'">회원가입 인증</button>
					<span class="join-ex">입점 신청 후 첫 방문이신 사장님께서는 회원가입 인증을 통해 입점을 완료해주세요.</span>
					</c:if>
				<!-- 로그인이 되어있는 경우  -->	
				<c:if test="${owner_login != null}">
					<!-- 식당 및 사장님 이름 출력  -->
					<div class="owner-name">
						<div style="font-size:25px;text-align:center;margin-bottom:10px;"><strong>${resVO.res_name }</strong></div>
						<div style="font-size:15px;text-align:center;"><strong>${owner_login.owner_name }</strong><span>접속 중</span></div>
					</div>
					<button class="btn btn-default btn-login" onclick="location.href='/owner/myshop'">My Shop</button>
					<button class="btn btn-default btn-login" onclick="location.href='/owner/logout'">로그아웃</button>
				</c:if>
			</div>
		</div>
		<div class="second-content row">
			<div class="col-md-4">
				<div class="second-item">입점신청</div>
			</div>
			<div class="col-md-4">
				<div class="second-item">알뜰쇼핑</div>
			</div>
			<div class="col-md-4">
				<div class="second-item">이용약관</div>
			</div>
		</div>
	</div>
	
<%@ include file="/WEB-INF/views/include/owner_footer.jsp" %>