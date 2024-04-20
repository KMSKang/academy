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
	width: 400px;
}

#currentPage {
	font-size: 20px;
	font-weight: 900;
	margin-left: 20px;
	text-align: center;
}

#hr {
	border: 0;
	height: 3px;
	background: #ccc;
}

img {
	width: 300px;
	height: 300px;
	object-fit: cover;
}

#label1{
margin-left: 160px;
margin-bottom: 8px;
font-size: 15px;
}

#label2{
font-size: 14px;
font-weight: 700;
margin-left: 180px;
}

#label3{
font-size: 14px;
font-weight: 700;
margin-top: 10px;
margin-left: 180px;
}

#button1{
width: 300px;
margin-left: 50px;
}

#write{
margin-top: 20px;
margin-left: 32%;
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



	<form id="form1">

		<p id="currentPage">회원가입 완료 !</p>

		<hr id="hr">
		
		<img src="uploadFile/memberPhoto/${SignUpInfo.photo}" class="img-circle" /> <br>
		
		<label id="label2">이메일</label> <br>
		<button type="button" class="btn btn-default" id="button1">${SignUpInfo.email}</button> <br>

		<label id="label3">닉네임</label> <br>
		<button type="button" class="btn btn-default" id="button1">${SignUpInfo.nickname}</button> <br>
		
		<a href="memberList/main" class="btn btn-default btn-sm" id="write">회원리스트로 이동하기</a>
		

	</form>

</body>
</html>