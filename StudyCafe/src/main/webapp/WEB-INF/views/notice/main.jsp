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





	<form style="margin: 0 auto; width: 1000px;">

		<div>
			<p
				style="font-size: 20px; font-weight: 900; margin-left: 20px; text-align: center;">공지사항</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>


		<table class="table table-hover" style="margin-top: -20px;">

			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>

			<c:forEach items="${noticeList}" var="noticeList">
				<tbody>
					<tr>
						<td>${noticeList.no}</td>
						<td>${noticeList.title}</td>
						<td>${noticeList.nickname}</td>
						<td>${noticeList.date}</td>
					</tr>
				</tbody>
			</c:forEach>

		</table>


		<div>
			<a href="/notice/write" class="btn btn-default btn-sm"
				style="display: block; float: right; margin-bottom: 20px;">글쓰기</a>
		</div>

	</form>

</body>
</html>