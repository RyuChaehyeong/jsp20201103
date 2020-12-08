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
<c:if test="${not empty param.dark or dark }" var="dark" scope="session">
		<!-- param.dark가 넘어왔거나 dark라는 attr이 4개 영역 중에 있거나 -->
		<div style="background-color: black; color: white;">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id modi obcaecati est rerum doloribus? Laudantium repellendus nam odio aperiam natus sint delectus impedit necessitatibus eveniet animi nemo quo quia vero.
		</div>
</c:if>

<c:if test="${not dark}"> <!-- 다크모드 체크하면 not dark가 false -->
		<div style="background-color: black; color: white;">
			Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id modi obcaecati est rerum doloribus? Laudantium repellendus nam odio aperiam natus sint delectus impedit necessitatibus eveniet animi nemo quo quia vero.
		</div>
	
</c:if>
<!-- session에다가 dark 결과 저장해놓아서 쿼리스트링 없이도 다크모드 계속.. -->
</body>
</html>