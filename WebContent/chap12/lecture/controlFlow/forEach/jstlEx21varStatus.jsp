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
<!-- 몇번째 for문을 돌고 있는건지 몇 번 index를 참조하고 있는건지??? 
		상태를 저장하는 변수를 varStatus attr에 저장
		varStatus는 LoopTagStatus 타입 get모모모메소드가 많음, bean으로 사용-->
		
<c:forEach items="${myList }" var="element" varStatus="status" begin="2" end="4">
	<li>루프가 돌아간 횟수  &equals; ${status.count } <br />
	
	    인덱스 번호 &equals; ${status.index} <br />
	    element &equals; ${element }</li> <br />
</c:forEach>
</body>
</html>