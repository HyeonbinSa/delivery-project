<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>요기요</title>
<link rel="stylesheet" href="/resources/css/yogiyo.css">
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>

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
         <button type="button" class="btn btn-login ng-binding" onclick="location.href='/login'" >로그인 <span>|</span> 회원가입</button>
         <button type="button" class="btn btn-warning hidden-xs ng-binding">주문표(0)</button>
         </div>
       </div>
      </div>
	</div>
</div>