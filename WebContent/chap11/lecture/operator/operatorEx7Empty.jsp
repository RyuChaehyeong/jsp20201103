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
<h3>empty</h3>
null: ${empty abc } <br /> <!-- abc라는 이름을 가진 attr이 있는지? --> <br />
"": ${empty "" } <br /> <!-- 있는데 빈String일 경우 true --> <br />
<%
List list = new ArrayList<>();
pageContext.setAttribute("list", list);
%>
list: ${empty list } <!-- 있는데 빈list인 경우  true --> <br />

<%
Map map = new HashMap<>();
pageContext.setAttribute("map", map);
%>
map: ${empty map } <br /> <!-- 비어있는 map도 true -->
<hr />

${not empty abc } <br />
${not empty "" } <br />
list: ${not empty list } <br />
map: ${not empty map } <br />
</body>
</html>