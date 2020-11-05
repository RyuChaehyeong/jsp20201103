<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>구구단 결과 창</title>
</head>
<body>
<a href="requestEx5Form.jsp" class = "btn btn-Warning">돌아가기</a>
<h1>결과</h1>
<%
String num = request.getParameter("num");
int i_num = Integer.valueOf(num);
for(int i = 1; i < 10 ; i++ ){
%>
<%= i_num %> X <%= i %> = <%= i_num * i %><br>
<%
}
%>
</body>
</html>