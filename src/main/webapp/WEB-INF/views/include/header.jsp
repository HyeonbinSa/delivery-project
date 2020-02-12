<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>벤딜리버리</title>
<link rel="stylesheet" href="/resources/css/yogiyo.css">

<link rel="stylesheet" href="/resources/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<style>
.navigation{
background-color : #f0001e;
}
</style>
</head>
<body>

<div id="header" class="header">
  <div role="navigation" class="nav-bar">
    <div class="navigation ver-pc">
      <div class="nav-top clearfix" >
        <span class="logo pull-left" onclick="location.href='/'" >요기요</span>
        <div id="cart" class="pull-right">
          <span class="gps-status ng-binding ng-hide">충신동</span>
          <a class="visible-xs ng-hide">
           <span class="ico-set-pic"></span>
         </a>
         <a id="button-cart" href="location.href='/'" class="visible-xs ng-hide" >
           <span class="ico-cart"></span>
           <span class="badge ng-binding" >0</span>
         </a>
         <c:if test="${not empty login }">
         	<button type="button" class="btn btn-warning hidden-xs ng-binding" onclick="location.href='/user/logout'" >로그아웃</button>
         	<style>
         		.btn-login{
         			display:none;
         		}
         	</style>
         </c:if>
         <button type="button" class="btn btn-login ng-binding" onclick="location.href='/login'" >로그인 <span>|</span> 회원가입</button>
         <button type="button" class="btn btn-warning hidden-xs ng-binding">주문표(0)</button>
                  <c:if test="${not empty login }">
         	<button type="button" class="btn btn-warning hidden-xs ng-binding" onclick="location.href='/user/mypage'" >My Page	</button>
  
         </c:if>
         </div>
       </div>
      </div>
	</div>
</div>