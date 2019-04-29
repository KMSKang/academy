<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/userCategory.jsp"
			flush="false" />
	</div>



	<form action="/signUpOK" enctype="multipart/form-data"
		style="margin: 0 auto; width: 400px;" method="POST">

		<div>
			<p
				style="font-size: 20px; font-weight: 900; margin-left: 20px; text-align: center;">회원가입</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<label for="profile" style="margin-left: 145px;">프로필 사진 추가</label><br>
		<span class="label label-danger" style="margin-left: 175px;">↓Click!</span>
		<a href="#Redirect" id="imgg"> <img class="img-responsive"
			src="/resources/img/sign/sign.png" id="img_sign"
			style="width: 300px; height: 300px; object-fit: cover;">
		</a> <input type="file" id="file" name="photoFile"
			style="visibility: hidden;">

		<div class="form-group">
			<label for="email">이메일</label> <input type="email"
				class="form-control" placeholder="이메일을 입력주세요" name="email">
		</div>

		<div class="form-group">
			<label for="password">비밀번호</label> <input type="password"
				class="form-control" id="content" placeholder="비밀번호를 입력주세요"
				name="pw">
		</div>

		<div class="form-group">
			<label for="nickname">닉네임</label> <input type="text"
				class="form-control" placeholder="사용하실 닉네임을 입력주세요" name="nickname">
		</div>

		<div>
			<button type="submit" class="btn btn-default btn-sm"
				style="display: block; float: left; margin-left: 170px; margin-top: 20px; margin-bottom: 30px;">등록</button>
		</div>

	</form>

	<script>
		$(document).ready(function() {
			$("#imgg").click(function() {
				$("#file").click();
			});
		});
	</script>

</body>
</html>