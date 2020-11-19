<%@page import="java.util.*"%>
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
<title>폼 생성</title>
</head>
<body>
<form action="viewParameter.jsp" method="post">
이름: <input type="text" name="name" size="10" /> <br>
주소: <input type="text" name="address" size="30" /> <br>
좋아하는 동물:
	<input type="checkbox" name="pet" value="강아지" />강아지
	<input type="checkbox" name="pet" value="고양이" />고양이
	<input type="checkbox" name="pet" value="돼지" />돼지
<br>
<input type="submit" value="전송" />



</form>
</body>
</html>