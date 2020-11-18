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
<h1>java 웹 앱의 4개 영역</h1>
<ul>
<li>page</li>
<li>request</li>
<li>session</li>
<li>application</li>
</ul>

<%
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sessionAttr1", "sessionVal1");
application.setAttribute("appAttr1", "appVal1");
//다른 페이지에서 이 attr들을 읽어봅시다.
%>
</body>
</html>