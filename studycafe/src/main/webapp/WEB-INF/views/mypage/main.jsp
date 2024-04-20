<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css" />

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/userCategory.jsp"
			flush="false" />
	</div>

	<form style="margin: 0 auto; width: 300px;">

		<div>
			<p style="font-size: 20px; font-weight: 900; text-align: center;">마이페이지</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<!-- 카카오라는 글자가 있으면 -->
		<c:if test="${ mypage.photo.indexOf('kakaocdn') != -1}">
			<img src="${mypage.photo}" class="img-circle"
				style="width: 300px; height: 300px;">
			<br>
		</c:if>

		<!-- 카카오라는 글자가 없으면 -1 -->
		<c:if test="${ mypage.photo.indexOf('kakaocdn') == -1}">
			<img src="/uploadFile/memberPhoto/${mypage.photo}" class="img-circle"
				style="width: 300px; height: 300px;">
			<br>
		</c:if>

		<div class="form-group">
			<label style="font-size: 14px; font-weight: 700; margin-left: 42%;">이메일</label>
			<br>
			<button type="button" class="btn btn-default" style="width: 300px;">${mypage.email}</button>
		</div>

		<br>

		<div class="form-group" style="margin-top: -5px;">
			<label style="font-size: 14px; font-weight: 700; margin-left: 42%;">닉네임</label>
			<br>
			<button type="button" class="btn btn-default" style="width: 300px;">${mypage.nickname}</button>
		</div>

		<div style="margin-top: 8%;">
			<a href="/mypage/modify.do" class="btn btn-default btn-sm" id="modify" style="margin-left: 18%;">회원정보 수정</a>
			<a href="/mypage/delete.do" class="btn btn-default btn-sm" style="margin-left: 5%;">회원 탈퇴</a>
		</div>

	</form>

	<script>
		window.onload = function() {
			("#submit").onclick;
		}

		$(document).ready(function() {
			$('#no').val("${no}");
		});
	</script>
</body>
</html>