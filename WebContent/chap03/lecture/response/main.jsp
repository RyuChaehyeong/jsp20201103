<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	boolean login = id.equals("seoul")&& pw.equals("123");
	
	if(!login) { //로그인 안됐음 다시 로그인 요청 보내기
		response.sendRedirect("loginForm.jsp");
		
	} else { //로그인 됐으면 밑에 코드 진행
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
<h1>main contents</h1>
</body>
</html>
<%
	}
%>


