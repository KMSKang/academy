<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#write {
	display: block;
	float: right;
	margin-bottom: 20px;
}

#hr {
	border: 0;
	height: 3px;
	background: #ccc;
}

#currentPage {
	font-size: 20px;
	font-weight: 900;
	margin-left: 20px;
}

#form2 {
	margin: 0 auto;
	width: 1000px;
}
</style>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css" />

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/userCategoryManagement.jsp"
			flush="false" />
	</div>

</body>
</html>