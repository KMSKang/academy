<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 카테고리</title>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<style>
img {
	display: block;
	margin: 0px auto;
}

.rain-background {
	background-color: #333;
}

#MainCategory {
	font-size: 20px;
}

#left_a:hover {
	color: red;
}

#left_a:active {
	color: red;
}
</style>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

			<div class="navbar-header">
				<a class="navbar-brand" href="/" id="MainCategory">열공스터디</a>
			</div>

			<ul class="nav navbar-nav">
				<li><a href="/notice/main" id="top_a">공지사항</a></li>
				<li><a href="/reservation/main" id="top_a">스터디</a></li>
				<li><a href="/mypage/main" id="top_a">마이페이지</a></li>
				<li><a href="/memberList/main" id="top_a">회원리스트</a></li>
				<li><a href="/serviceCenter/main" id="top_a">고객센터</a></li>
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
					<c:if test="${ photo.indexOf('kakaocdn') != -1}">
						<li><img src="${photo}" class="img-circle"
							style="width: 40px; height: 40px; margin-top: 12%; margin-right: 5px;">
						</li>
					</c:if>

					<!-- 카카오라는 글자가 없으면 -1 -->
					<c:if test="${ photo.indexOf('kakaocdn') == -1}">
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

	<div style="position: absolute;">
		<ul style="list-style: none; font-weight: bold; font-size: 20px; line-height: 50px;">
			<li><a href="/management/notice" id="left_a" style="color: black; text-decoration: none;">공지사항 관리</a></li>
			<li><a href="/management/event" id="left_a" style="color: black; text-decoration: none;">이벤트 관리</a></li>
			<li><a href="/management/studyReservation" id="left_a" style="color: black; text-decoration: none;">스터디 예약 관리</a></li>
			<li><a href="/management/studyRecuitment" id="left_a" style="color: black; text-decoration: none;">스터디 모집 관리</a></li>
			<li><a href="/management/studySignUp" id="left_a" style="color: black; text-decoration: none;">스터디 가입 관리</a></li>
			<li><a href="/management/memberList" id="left_a" style="color: black; text-decoration: none;">회원리스트 관리</a></li>
			<li><a href="/management/serviceCenter" id="left_a" style="color: black; text-decoration: none;">고객센터 관리</a></li>
		</ul>
	</div>

</body>
</html>