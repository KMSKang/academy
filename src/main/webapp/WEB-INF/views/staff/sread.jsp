<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE htm>
<html>
<head>
<meta charset="UTF-8">
<title>���̴� �� ������</title>
<%@ include file="../commons/hdjs.jsp"%>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<h2>���̴� �� ������</h2>
	<table border="1">
	<tr>
		<th>��  ��</th>
		<th>����ȣ</th>
		<th>�г���</th>
		<th>�̹���</th>
	</tr>
	<tr>
		<td>${staff.sname }</td>
		<td>${staff.sphone }</td>
		<td>${staff.snickname }</td>
		<td><img style=whidth:50px; height=50px; 
		src="${pageContext.request.contextPath}/uploadfile/staffphoto/${staff.simg }">
		</td>
	</tr>
</table>
<br>
<button><a href="smodify?sseq=${staff.sseq}">������� ����</a></button>
<button><a href="sremove?sseq=${staff.sseq}">������� ����</a></button>
</body>
</html>