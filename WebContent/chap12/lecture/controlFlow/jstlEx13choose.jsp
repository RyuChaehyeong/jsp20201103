<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<!-- 첫번째 when에서 true로 결정나면 뒤에 true로는 오지 않음 -->
	<!-- otherwise에는 default -->
<c:choose> 
	<c:when test="false">
		<h1>hello 1</h1>
	</c:when>
	
	<c:when test="false">
		<h1>hello 2</h1>
	</c:when>
	
	<c:otherwise>
		<h1>hello 3</h1>
	</c:otherwise>
</c:choose>
</body>
</html>