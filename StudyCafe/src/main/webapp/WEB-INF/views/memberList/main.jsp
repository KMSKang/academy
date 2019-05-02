<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table th {
	text-align: center;
}

table td{
	vertical-align: middle;
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

	<form style="margin: 0 auto; width: 1000px;">

		<div>
			<p style="font-size: 20px; font-weight: 900; text-align: center;">회원 리스트</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<table class="table table-hover"
			style="text-align: center; margin-top: -20px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>사진</th>
					<th>닉네임</th>
					<th>이메일</th>
					<th>비밀번호</th>
					<th>가입일</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${memberList}" var="memberList">
					<tr>
						<td style="vertical-align: middle;">${memberList.no}</td>

						<!-- 카카오라는 글자가 있으면 -->
						<c:if test="${memberList.photo.indexOf('kakaocdn') != -1}">
							<td><img src="${memberList.photo}" class="img-circle"
								style="width: 100px; height: 100px;"></td>
						</c:if>

						<!-- 카카오라는 글자가 없으면 -1 -->
						<c:if test="${memberList.photo.indexOf('kakaocdn') == -1}">
							<td><img src="/uploadFile/memberPhoto/${memberList.photo}"
								class="img-circle" style="width: 100px; height: 100px;"></td>
						</c:if>
						<td style="vertical-align: middle;">${memberList.nickname}</td>
						<td style="vertical-align: middle;" id="email">${memberList.email}</td>
						<td style="vertical-align: middle;">${memberList.pw}</td>
						<td style="vertical-align: middle;">${memberList.date}</td>
						<td><input type="button" class="btn btn-default btn-sm" style="margin-top:30%;" value="강제탈퇴"></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
	
	<script>
	$(document).ready(function() {
		$(".btn").click(function() {
			var emailValue = ($(this).parent().parent().children("#email").html());
			 $.ajax({
		  			 url : 'http://localhost/memberList/delete',
					 method : 'POST',
					 data : {
				     email : emailValue
					 },
					 success: function(result){
						 window.location.reload();
					 },
					 error: function(result){
						 alert("실패");
					 }
		});
	});
	});
	</script>


</body>
</html>

