<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<h2>jsp에서 사용하는 pageContext랑 el에서 사용하는 pageContext는 같은 객체</h2>

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
<%= pageContext %> <br />
${pageContext.request } br
pageContext의 method 중에 getRequest있다. <br />
pageContext를 javaBean인 것 처럼! <br />

pageContext를 통해서 8개의 기본 객체를 얻어낼 수 있다.
${pageContext.session }
${pageContext.servletContext }
${pageContext.servletConfig }
${pageContext.response }
<hr />
<%=request.getContextPath() %> <br />
${pageContext.request.contextPath } <br />
${pageContext.request.cookies[0].name } <br />
${pageContext.request.cookies[0].value} <br />
request도 bean인 것 처럼!!

<hr />
${pageContext.request } <br />
<h3> 위랑 아래랑 같다</h3>
<%= pageContext.getRequest() %>

elEx14부터 잘 못들음
</body>
</html>