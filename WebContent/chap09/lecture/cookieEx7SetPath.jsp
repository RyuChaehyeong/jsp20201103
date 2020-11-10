<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%
Cookie cookie = new Cookie("mycookie2", "mycookie2-path");
cookie.setPath("/my_jsp/chap09"); //쿠키 만들때 path를 정해줄 수 있음 , /chap9로 경로설정, 이거보다 하위경로 일때만 쿠키를 보여줌
//상위path에서는 브라우저가 요청 보낼때 쿠키 안보내줌
cookie.setHttpOnly(true);
response.addCookie(cookie);
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
<h1>쿠키 path랑 포함</h1>

<!-- 경로 지정 안해주면 lecture에서 view에서만 확인할 수 있는데
경로를 더 크케 chap09까지 확장해주면 chap09에서도 view할 수 있음 -->
</body>
</html>