<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
같은이름의 property가 있는 경우 영역Scope이라는 map을 사용해야 한다. 
11개의 객체가 아니면 page에서 부터 꺼내서 찾는다.
${pageAttr1 } <br />
<hr />
${requestScope["req Attr1"] } <br />
${reqAttr2 } <br />

<hr />

${sesAttr2 } <br />
${sessionScope.reqAttr2 } <br />

<hr />
${applicationScope.reqAttr2 } <br />
${appAttr1 } <br />
${applicationScope["app Attr3"] } <br />

</body>
</html>