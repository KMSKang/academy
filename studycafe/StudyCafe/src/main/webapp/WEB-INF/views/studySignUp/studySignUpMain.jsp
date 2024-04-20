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
		<jsp:include page="/WEB-INF/views/category/userCategoryStudy.jsp"
			flush="false" />
	</div>





	<form style="margin: 0 auto; width: 1000px;">

		<div>
			<p
				style="font-size: 20px; font-weight: 900; margin-left: 20px; text-align: center;">스터디
				가입</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<table class="table table-hover">

			<thead>
				<tr>
					<th>번호</th>
					<th>지역</th>
					<th>분류</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
					<th>좋아요</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>1</td>
					<td>잠실역</td>
					<td>Spring</td>
					<td>2인 프로젝트 하실분 구합니다</td>
					<td>지나가던 행인</td>
					<td>2019-04-03</td>
					<td>15</td>
					<td>5</td>
				</tr>
			</tbody>

		</table>

		<div>
			<a href="recruitmentWrite.do" class="btn btn-default btn-sm"
				style="display: block; float: right; margin-bottom: 20px;">글쓰기</a>
		</div>

	</form>

</body>
</html>