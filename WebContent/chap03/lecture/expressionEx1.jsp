<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>Lorem ipsum dolor.</h1>

<%
String name = "java"; /* 변수 선언하여 값을 넣음 */
%>


<%= name %> <!-- 연산식, 결과 out.print의 파라미터로 들어감 -->


<hr>
<%
java.util.List<String> list = new java.util.ArrayList<>(); 
list.add("java");
list.add("html");
list.add("css");
list.add("jquery");
list.add("jsp");
%>

<ul>
<%
for(String item : list) {

%>
<li><%= item %></li>
<% 
}

%>
</ul>

<hr>

<%
String status_danger = "danger";
String status_primary ="primary";
String status_success = "success";

int status = 1;

if(status == 0){
	
%>
	<h1 class="text-<%=status_danger%>">Lorem ipsum dolor.</h1>
<%
} else {
%>
	<h1 class="text-<%=status_primary%>">Lorem ipsum dolor.</h1>

<%
}
%>

%>
<h1 class="text-<%=status%>">Lorem ipsum dolor.</h1>
<!-- 값이 바뀌면 상태가 바뀜 동적!! -->





























</body>
</html>