<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="car" class="chap08.Car"></jsp:useBean> 페이지의 attr로 넣어놓음
<jsp:setProperty name = "car" property = "speed" value = "100"/>

빈의 id값을 똑같이
value에는 integer로 변환될 수 있는 값을 넣어주어야 한다. <br />

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
<%= car.getSpeed()%> <br />
프로퍼티 얻어오는 액션태그 <br />
<jsp:getProperty property="speed" name="car"/>
<br />

<jsp:getProperty property="stop" name = "car"/>
<br />
얻어오는 것 가능!
</body>
</html>