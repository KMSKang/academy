<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css" />

</head>
<body>


	<div>
		<jsp:include page="/WEB-INF/views/category/userCategoryNotice.jsp"
			flush="false" />
	</div>





	<form action="/notice/writeOK" style="margin: 0 auto; width: 400px;" method="POST">

		<div>
			<p
				style="font-size: 20px; font-weight: 900; margin-left: 20px; text-align: center;">공지사항</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<div class="form-group">
			<label for="title">제목</label> <input type="text" class="form-control"
				placeholder="제목을 입력주세요" name="title">
		</div>

		<div class="form-group">
			<label for="title">내용</label> <textarea class="form-control" style="height: 600px;" placeholder="내용을 입력주세요" name="content"></textarea>
		</div>

		<div class="form-group" style="margin-left: 5%;">
			<button type="submit" class="btn btn-default btn-sm"
				style="display: block; float: left; margin-left: 150px; margin-top: 20px; margin-bottom: 30px;">등록</button>
		</div>


	</form>

</body>
</html>