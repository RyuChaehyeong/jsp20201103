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
<h1>main jsp</h1>
<%
Object o = new Object();
System.out.println(o.hashCode());
/* 같은 request이어서 object를 request에 붙여서 넘겨주면 됨 */
request.setAttribute("obj", o); //obj라는 이름으로 붙여줌
//string이름을 써주어야 함

%>
<jsp:forward page="subEx1.jsp">
	<jsp:param value="newVal" name="newParam"/>
</jsp:forward>
</body>
</html>