<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
String pw = request.getParameter("password");

if(id != null && pw != null) {
	if(id.equals(pw)) {
		session.setAttribute("id", id);
	} else {
		response.sendRedirect("loginForm.jsp");
	}
} else {
	response.sendRedirect("loginForm.jsp");
	
}
//로그인이 된다기 보다 안될때 response.sendRedirect로 다시 loginForm으로 보내는 느낌
//sendRedirect가 아니어서 로그인이 되는 닉김임..ㅋㅋ
%>
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
<h1><%= session.getAttribute("id") %> 님 안녕하세요 ^^*</h1>
<!-- 여기에 로그아웃 링크 -->
<a href="logout.jsp">로그아웃</a>
</body>
</html>