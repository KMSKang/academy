<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	/* 이전 버튼 이벤트 */
	function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/notice/main";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;

	}

	/* 페이지 번호 클릭 */

	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/notice/main";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}

	/* 다음 버튼 이벤트 */
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/notice/main";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
</script>

<style>
table th {
	text-align: center;
}

#td {
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
		<jsp:include page="/WEB-INF/views/category/userCategoryNotice.jsp"
			flush="false" />
	</div>

	<form style="margin: 0 auto; width: 1000px;">

		<div>
			<p
				style="font-size: 20px; font-weight: 900; margin-left: 20px; text-align: center;">공지사항</p>
			<hr style="border: 0; height: 3px; background: #ccc;">
		</div>

		<table class="table table-hover"
			style="text-align: center; margin-top: -20px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>관리</th>
				</tr>
			</thead>

			<c:forEach items="${noticeList}" var="noticeList">
				<tbody>
					<tr>
						<td>${noticeList.no}</td>
						<td>${noticeList.title}</td>
						<td>${noticeList.nickname}</td>
						<td>${noticeList.date}</td>
						<td><a href="/notice/write" class="btn btn-default btn-sm">수정</a><a
							href="/notice/write" class="btn btn-default btn-sm">삭제</a></td>
					</tr>
				</tbody>
			</c:forEach>

		</table>


		<div>
			<a href="/notice/write" class="btn btn-default btn-sm"
				style="display: block; float: right; margin-bottom: 20px;">글쓰기</a>
		</div>

		<!-- pagination{s} -->

		<div id="paginationBox">

			<ul class="pagination">

				<c:if test="${pagination.prev}">

					<li class="page-item"><a class="page-link" href="#"
						onClick="fn_prev('${idx}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>

				</c:if>

				<c:forEach begin="${pagination.startPage}"
					end="${pagination.endPage}" var="idx">

					<li
						class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a
						class="page-link" href="#"
						onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
							${idx} </a></li>

				</c:forEach>



				<c:if test="${pagination.next}">

					<li class="page-item"><a class="page-link" href="#"
						onClick="fn_next('${pagination.range}', 

'${pagination.range}', '${pagination.rangeSize}')">Next</a></li>

				</c:if>

			</ul>

		</div>

		<!-- pagination{e} -->

	</form>

</body>
</html>