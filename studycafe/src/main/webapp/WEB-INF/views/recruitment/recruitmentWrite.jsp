<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#form1 {
	margin: 0 auto;
	width: 700px;
}

#content {
	height: 700px;
}

#submit {
	display: block;
	float: left;
	margin-left: 315px;
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



	<form action="/action_page.php" id="form1">

		<div class="form-group">
			<label for="email">제목</label> <input type="text"
				class="form-control" placeholder="제목을 입력주세요">
		</div>

		<div class="form-group">
			<label for="text">내용</label> <input type="text"
				class="form-control" id="content" placeholder="내용을 입력주세요">
		</div>

		<div>
			<button type="submit" class="btn btn-default" id="submit">수정해야함</button>
		</div>
	</form>

</body>
</html>