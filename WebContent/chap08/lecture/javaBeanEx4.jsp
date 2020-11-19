<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" 
class = "chap08.member.MemberInfo" scope="request"></jsp:useBean>
<%
Object o = request.getAttribute("member");
System.out.println(o);
%>

<jsp:forward page="javaBeanEx4Forward.jsp"/>
같은 request에서 일이 마쳐짐

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
request객체 안에 있으니까 같은 영역에 있는 곳에서 request로 꺼내면 
새로운 페이지로 forward@@


</body>
</html>