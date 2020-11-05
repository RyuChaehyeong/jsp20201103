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
<title>main</title>
</head>
<body>
main.jsp에서 생성한 내용.
<jsp:include page="sub.jsp" flush="false"></jsp:include>
include 이후의 내용
<!-- main.jsp도 따로 자바 코드로 translate, sub.jsp도 따로 자바 코드로 translate
static method를 호출한 결과가 들어가는 것임 -->
</body>
</html>