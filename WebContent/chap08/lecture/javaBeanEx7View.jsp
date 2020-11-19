<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="car" class="chap08.Car"/>
<%
//원래는 이렇게 했지.
/*car.setName(request.getParameter("carName"));
car.setSpeed(Integer.valueOf(request.getParameter("carSpeed")));
*/
//아래서 java bean을 사용한다면?
%>
<jsp:setProperty name="car" property="name" param="carName"/>
<br />
파라미터로 얻어올 땐 value대신 param attr로 <br />
<jsp:setProperty name="car" property="speed" param="carSpeed"/>
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
<jsp:getProperty property ="name" name="car"/> <br />
<jsp:getProperty property="speed" name="car"/>
</body>
</html>