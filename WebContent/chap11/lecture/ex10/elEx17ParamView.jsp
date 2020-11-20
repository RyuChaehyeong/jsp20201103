<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
원래는 request.getParameter로 받아야 하지만
11개의 객체에 param이 있어서 param.indexname으로 받아올 수 있다.
이름 : ${param.name } <br />
암호 : ${param.password } <br />
이메일 : ${param.email } <br />
</body>
</html>