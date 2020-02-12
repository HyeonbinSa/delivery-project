<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/resources/css/yogiyo.css">
<script src="/resources/js/addressapi.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
var result = "${result}";
if(result == "already"){
	alert("이미 회원가입이 되어있습니다.");
}else if(result == "complete"){
	alert("회원가입이 완료되었습니다.");
}
</script>
<style>
html {
    height: 100%;
    font-size: 62.5%;
}
body {
    margin: 0;
    padding: 0;
    height: 100%;
    font-size: 14px;
    font-family: "Noto Sans KR", "Roboto", "APPLE SD Gothic NEO", sans-serif, helvetica;
}
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
}
.wrap {
    position: relative;
    display: table;
    margin: 0 auto;
    padding: 0 4%;
    width: 100%;
    height: 100%;
    box-sizing: border-box;
}
@media screen and (min-width: 330px)
.wrap {
    padding: 0;
    max-width: 330px;
}
.content {
    display: table-row;
    height: 100%;
}
.content .cont-inner {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
    height: 100%;
}
.content .login-wrap .title-area {
    vertical-align: middle;
}
.content .login-wrap .titie-area .title {
    margin: 0 0 38px;
    font-size: 14px;
    color: #8e929f;
    text-align: center;
    font-weight: normal;
}
</style>
<div class="wrap">
	<div class="content">
		<div class="content-inner login-wrap">
			<div class="title-area">
				<h1 class="title">
						<a>logo</a>
					</h1>
			</div>
			<form method="post">
				<input type="text" value="id">
				<input type="password" value="password">
				<button type="submit">로그인</button>
				<div class="login-set">
					<div></div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>