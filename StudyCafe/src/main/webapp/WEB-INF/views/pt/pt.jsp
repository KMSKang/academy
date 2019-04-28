<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css" />


<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap/datepicker/moment-with-locales.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datetimepicker-standalone.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datetimepicker.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datetimepicker.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datepicker.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap/datepicker/bootstrap-datetimepicker.js"></script>
</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/userCategory.jsp"
			flush="false" />
	</div>

	<div style="overflow: hidden;">
		<div class="form-group">
			<div class="row">
				<div class="col-md-8">
					<div id="datetimepicker12"></div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(function() {
				$('#datetimepicker12').datetimepicker({
					inline : true,
					sideBySide : true
				});
			});
		</script>
	</div>


</body>
</html>