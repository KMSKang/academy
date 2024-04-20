<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page session="false"%>

<html>
<head>
<title>메인 페이지</title>
<style>
#video-background {
	position: fixed;
	right: 0;
	bottom: 0;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -100;
}
</style>
</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/userCategory.jsp"
			flush="false" />
	</div>

	<video autoplay loop id="video-background" muted playsinline>
		<source src="/resources/video/main.mp4" type="video/mp4" />
	</video>
</body>
</html>
