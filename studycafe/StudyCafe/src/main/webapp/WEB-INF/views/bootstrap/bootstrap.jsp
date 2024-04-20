<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<button type="button" class="close" aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<!-- Standard button -->
	<button type="button" class="btn btn-default">Default</button>

	<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
	<button type="button" class="btn btn-primary">Primary</button>

	<!-- Indicates a successful or positive action -->
	<button type="button" class="btn btn-success">Success</button>

	<!-- Contextual button for informational alert messages -->
	<button type="button" class="btn btn-info">Info</button>

	<!-- Indicates caution should be taken with this action -->
	<button type="button" class="btn btn-warning">Warning</button>

	<!-- Indicates a dangerous or potentially negative action -->
	<button type="button" class="btn btn-danger">Danger</button>

	<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
	<button type="button" class="btn btn-link"
		style="text-decoration: none;">Link</button>
	<a class="btn btn-default" href="#" role="button">Link</a>
	<button class="btn btn-default" type="submit">Button</button>
	<input class="btn btn-default" type="button" value="Input">
	<input class="btn btn-default" type="submit" value="Submit">

	<div class="panel panel-primary">ㅎㅎㅎ</div>

	<ul class="list-group">
		<li class="list-group-item list-group-item-success">영업시간<br>(평일)9:00
			~ 24:00
		</li>
		<li class="list-group-item list-group-item-info">영업시간<br>(평일)9:00
			~ 24:00
		</li>
		<li class="list-group-item list-group-item-info">영업시간<br>(평일)9:00
			~ 24:00
		</li>
		<li class="list-group-item list-group-item-warning">Porta ac
			consectetur ac</li>
		<li class="list-group-item list-group-item-danger">Vestibulum at
			eros</li>
	</ul>
	<div class="list-group">
		<a href="#" class="list-group-item list-group-item-success">Dapibusac
			facilisis in</a> <a href="#" class="list-group-item list-group-item-info">Cras
			sit amet nibh libero</a> <a href="#"
			class="list-group-item list-group-item-warning">Portaac
			consectetur ac</a> <a href="#"
			class="list-group-item list-group-item-danger">Vestibulum at eros</a>
	</div>
	<button type="button" class="close" aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<span class="caret"></span>
	<p class="bg-primary">abcdefghijqlmnopqrstuvwxy</p>
	<p class="bg-success">가나다라마바사아자카파타차하</p>
	<p class="bg-info">abcdefghijqlmnopqrstuvwxy</p>
	<p class="bg-warning">가나다라마바사아자카파타차하</p>
	<p class="bg-danger">abcdefghijqlmnopqrstuvwxy</p>
</body>
</html>