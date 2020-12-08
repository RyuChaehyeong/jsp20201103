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
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("html");
list.add("servlet");
list.add("css");
list.add("jquery");
list.add("js");

request.setAttribute("myList", list);
%>

<ul>
	<h3>1번 index부터 3번 index까지!</h3>
	<!-- item이 items랑 같이 쓰면  item에는 숫자가 아닌 item이 한번씩 들어갔다가 나왔는데
		숫자 자체를 쓰고 싶을 때도 있지 않느냐
		숫자과 관련된 상태를 알고 싶을 때, 새로운 파일 jstlEx21으로!-->
	<c:forEach items="${myList }" var="item" begin="1" end="3">
		<li>${item }</li>
	</c:forEach>
</ul>
</body>
</html>