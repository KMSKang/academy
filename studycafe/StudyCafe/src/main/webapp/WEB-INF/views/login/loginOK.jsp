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
		$("#imgg").click(function() {
			$("#file").click();
		});
	});
</script>

<style>
#file {
	visibility: hidden;
}

#form1 {
	margin: 0 auto;
	width: 400px;
}

#label1 {
	margin-left: 150px;
}

#label2 {
	margin-left: 155px;
}

#submit {
	display: block;
	float: left;
	margin-left: 150px;
	margin-top: 20px;
	margin-bottom: 30px;
}

hr {
	border: 0;
	height: 3px;
	background: #ccc;
}

#currentPage {
	font-size: 20px;
	font-weight: 900;
	margin-left: 20px;
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

		<div>
			<p id="currentPage">회원가입</p>
			<hr id="hr">
		</div>

		<p>로그인 완료</p>

</body>
</html>