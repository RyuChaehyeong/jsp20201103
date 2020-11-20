<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%--
el에서 사용할 수 있는 기본 객체 11개
pageContext: 얘 빼고 다 맵임
pageScope :Map
requestScope :Map
sessionScope :Map
applicationScope :Map
param :Map
paramValues :Map
header :Map
headerValues :Map
cookie :Map
initParam :Map

--%>
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
${pageContext } <br />
${pageScope } <br/>
${requestScope } <br />
${sessionScope } <br />
${applicationScope } <br />
${param } <br />
${header } <br />
${headerValues } <br />
${cookie } <br />
${initParam } <br />

11개 객체를 사용할 수 있다. 
</body>
</html>