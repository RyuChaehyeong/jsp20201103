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
<h1>contextPathEx2</h1>
<jsp:include page="/chap04/lecture/contextPathEx2Sub.jsp"></jsp:include>
<!-- 내부에서 쓸때는 contextPath 경로가 필요 없음 외부에서만 필요 -->
<!-- 링크 작성할 때에는 jsp:include랑 똑같이 쓰면 안됨 앞에 contextPath추가 해주어야 함-->
<a href="<%= request.getContextPath() %>/chap04/lecture/contextPathEx2Sub.jsp"></a>
</body>
</html>