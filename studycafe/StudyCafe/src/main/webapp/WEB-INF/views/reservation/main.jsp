<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.img-cover:hover {
	mix-blend-mode: soft-light !important;
}
</style>

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



	<div class="container">
		<div class="row">





			<div class="span4">
				<div style="text-align: center;">
					<p style="font-size: 20px; font-weight: 900; margin-left: 20px; text-align: center;">스터디카페
						예약</p>
					<hr style="border: 0; height: 3px; background: #ccc; width: 650px;">
				</div>
			</div>


			<c:forEach items="${reservationList}" var="reservationList">
				<div class="span4">
					<div class="img img-fluid" style="position: relative; background-image: url('/uploadFile/reservationPhoto/${reservationList.photo1}'); height: 100vh; background-position: center; background-size: cover; width: 700px; height: 400px; margin-left: 20%; cursor: pointer; object-fit: cover;" onclick="location.href='http://localhost/reservation/info.do?no='+${reservationList.no}">

						<div>
							<div class="content"
								style="position: absolute; top: 48%; left: 55%; transform: translate(0%, 0%); font-size: 5rem; color: white; z-index: 2; text-align: center;">
								<p style="font-size: 40px;">${reservationList.name}</p>
							</div>


							<div class="content"
								style="position: absolute; top: 61%; left: 70%; transform: translate(0%, 0%); font-size: 5rem; color: white; z-index: 2; text-align: center;">
								<p style="font-size: 30px;">서울시 종로구</p>
							</div>


							<div class="content"
								style="position: absolute; top: 77%; left: 67%; transform: translate(0%, 0%); font-size: 5rem; color: white; z-index: 2; text-align: center;">
								<p style="font-size: 20px; font-weight: 900;">(평일)시간당
									￦${reservationList.weekdayPrice}</p>
								<p style="font-size: 20px; font-weight: 900;">(주말)시간당
									￦${reservationList.weekendPrice}</p>
							</div>


							<div class="img-cover"
								style="position: absolute; height: 100%; width: 100%; z-index: 1; mix-blend-mode: multiply; background-color: grey;">
							</div>

						</div>
					</div>
				</div>
			</c:forEach>








		</div>
	</div>

</body>
</html>