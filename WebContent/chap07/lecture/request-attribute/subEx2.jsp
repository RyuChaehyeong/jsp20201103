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
<%
Object o = request.getAttribute("cartList");
List<String> list = new ArrayList<>();
//굳이 new ArrayList를 사용하는 이유는 30번 줄에서 for안에 list에서 null예외 생길까봐
if(o != null && o instanceof List<?>) {
	list = (List<String>) o;
}
%>

<h1>cart list</h1>
<ul>
<%
for(String item : list) {
%>
	<li><%= item %></li>
<%
}
%>	
</ul>
</body>
</html>