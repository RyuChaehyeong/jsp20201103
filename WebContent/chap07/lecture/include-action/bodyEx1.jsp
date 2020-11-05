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

String str = "java";
%>
<!--include는 서로 다른 파일 사용한 각자클래스로 변경된 다음에 
호출한 결과만 가지고 오기 때문에 include directive랑 똑같이 사용하지 못한다.-->
<!-- 기능을 하는 action tag, attr은 page -->
<jsp:include page="navbarEx1.jsp"></jsp:include>


<div class="container">
<h1>액션 태그 본문!!!</h1>
</div>
<jsp:include page="footerEx1.jsp"></jsp:include>


</body>
</html>