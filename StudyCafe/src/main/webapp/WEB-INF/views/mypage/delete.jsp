<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<script>
	$(document).ready(function() {
		$("#img").click(function() {
			$("#file").click();
		});

		$('#email').val("${mypage.email}");
		$('#nickname').val("${mypage.nickname}");
	});
</script>

<style>
form {
	margin: 0 auto;
	width: 300px;
}

input {
	text-align: center;
}
</style>

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

	<form action="/mypage/deleteOK" enctype="multipart/form-data"
		method="POST">

		<div>
			<p style="font-size: 20px; font-weight: 900; text-align: center;">마이페이지(탈퇴)</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<!-- 카카오라는 글자가 있으면 -->
		<c:if test="${mypage.photo.indexOf('kakaocdn') != -1}">
			<a href="#"> <img src="${mypage.photo}" class="img-circle"
				style="width: 300px; height: 300px;" id="img"></a>
			<br>
		</c:if>

		<!-- 카카오라는 글자가 없으면 -->
		<c:if test="${mypage.photo.indexOf('kakaocdn') == -1}">
			<a href="#"> <img src="/uploadFile/memberPhoto/${mypage.photo}"
				class="img-circle" style="width: 300px; height: 300px;" id="img"></a>
			<br>
		</c:if>

		<div class="form-group">
			<label
				style="font-size: 14px; font-weight: 700; margin-top: -30px; margin-left: 42%;">이메일</label>
			<input type="text" class="form-control" id="email" name="email"
				style="background: none;" readonly>
		</div>

		<div class="form-group">
			<label
				style="font-size: 14px; font-weight: 550; margin-top: 5%; margin-left: 46%;">pw</label>
			<input type="password" class="form-control" name="pw">
		</div>

		<div
			class="row no-gutters slider-text js-fullheight align-items-end justify-content-center"
			style="margin-top: -10px;">

			<div class="col-md-12 ftco-animate pb-2 text-center"
				style="margin-top: 5%;">
				<div>
					<button type="submit" class="btn btn-default btn-sm">탈퇴</button>
				</div>
			</div>
		</div>
	</form>

</body>
</html>