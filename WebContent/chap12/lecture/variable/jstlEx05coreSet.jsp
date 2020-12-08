<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<c:set var="myvar1" value="my value1" scope="page"></c:set> <!-- 기본값이 page -->
<c:set var="myvar2" value="my value1,in page" scope="page"></c:set> <!-- 기본값이 page -->
<c:set var="myvar2" value="my value2, in request" scope="request" ></c:set>

${myvar1 } <br />
${myvar2 } <br />
${requestScope.myvar2 } <br />
<!-- page와 request영역에 같은 이름으로 attr이 들어가 있는 경우에
requestScope객체를 사용하여 얻어옴 -->
</body>
</html>