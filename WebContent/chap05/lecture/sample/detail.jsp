<%@page import="chap05.Post"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%
List<Post> post = new ArrayList<>();
Object o = (List<Post>) application.getAttribute("list");
if(o != null) {
	post = (List<Post>)o;
}
%>
<!DOCTYPE html>
<html>
<head>
<style>
.container {
	border: 1px solid gold;
	height: 350px;
	width: 200px;
	color: pink;
	background-color: sky;

}

</style>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>방명록 확인</title>
</head>
<body>
<%
String num_s = request.getParameter("id");
int num_i = Integer.valueOf(num_s);
%>
<div class="container m-5">
	제목: <input type="text" value="<%= post.get(num_i).getTitle() %>"  readonly / class="my-2">
	<br />
	<textarea cols="30" rows="10" readonly><%= post.get(num_i).getBody() %></textarea>
	<br />
	<a href="post.jsp">게시글 작성</a>	
</div>

</body>

</html>