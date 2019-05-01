<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 카테고리</title>
<style>
img {
	display: block;
	margin: 0px auto;
}
</style>

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<!-- 에이젝스 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화 된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/" style="font-size: 20px;">열공스터디</a>
			</div>

			<ul class="nav navbar-nav">
				<li><a href="/notice/main">공지사항</a></li>
				<li><a href="/reservation/main">스터디</a></li>
				<li><a href="/mypage/main">마이페이지</a></li>
				<li><a href="/memberList/main">회원리스트</a></li>
				<li><a href="/serviceCenter/main">고객센터</a></li>
				<li><a href="/management/main">관리</a></li>
			</ul>

			<!-- 로그인 전 -->
			<c:if test="${empty nickname}">
				<ul class="nav navbar-nav navbar-right">

					<li><a href="/signUp.do"> <span
							class="glyphicon glyphicon-user"></span> Sign Up
					</a></li>

					<li><a href="/login/main.do"> <span
							class="glyphicon glyphicon-log-in"></span> Login
					</a></li>

				</ul>
			</c:if>

			<!-- 로그인 후 -->
			<c:if test="${!empty nickname}">
				<ul class="nav navbar-nav navbar-right">

					<!-- 카카오라는 글자가 있으면 -->
					<c:if test="${photo.indexOf('kakaocdn') != -1}">
						<li><img src="${photo}" class="img-circle"
							style="width: 40px; height: 40px; margin-top: 12%; margin-right: 5px;">
						</li>
					</c:if>

					<!-- 카카오라는 글자가 없으면 -1 -->
					<c:if test="${photo.indexOf('kakaocdn') == -1}">
						<li><img src="/uploadFile/memberPhoto/${photo}"
							class="img-circle"
							style="width: 40px; height: 40px; margin-top: 12%; margin-right: 5px;">
						</li>
					</c:if>

					<li><p style="color: white; margin-top: 10%;">${nickname}님
							접속중</p></li>
					<li><a id="logout" href="/logout.do"><span
							class="glyphicon glyphicon-log-in"></span>Logout </a></li>
				</ul>
			</c:if>

		</div>

	</nav>


</body>
</html>