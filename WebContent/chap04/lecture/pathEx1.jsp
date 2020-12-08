<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>

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
<!--슬래쉬로 시작하지 않을 때 -->
<a href="<%= request.getContextPath()%>/chap04/lecture/contextPath2.jsp">other file</a><br>
<a href="contextPathEx2.jsp">other file2</a> <br>
<!-- 슬래쉬로 시작하면 절대 경로, 슬래쉬로 시작 안하면 상대경로(기준이 바뀔 수 있다)  -->

<!-- 절대경로로 찾아가려면  -->
<a href="<%= request.getContextPath()%>/chap04/lecture/subfolder/pathEx1Sub.jsp">절대경로</a><br>
<!-- 상대경로로 찾아가려면 lecture 뒤 경로-->
<a href="subfolder/pathEx1Sub.jsp">상대경로</a><br>					
</body>
</html>