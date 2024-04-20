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
			<p style="font-size: 20px; font-weight: 900; margin-left: 20px; text-align: center;">이벤트</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<table class="table table-hover">

			<thead>
				<tr>
					<th>사진</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
					<th>좋아요</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td><img class="img-fluid"
						src="/www/resources/img/event/event1.jpg"
						style="width: 200px; height: 200px;"></td>
					<td>초심스터디카페 할인 쿠폰 입니다 (석촌역)</td>
					<td>관리자</td>
					<td>2019-04-02</td>
					<td>20</td>
					<td>8</td>
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