<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 //MemberInfo m = new MemberInfo();
 
 //이렇게 직접 안만들고 액션태그로..
 
 %>
<jsp:useBean id="member" class = "chap08.member.MemberInfo" scope="page"></jsp:useBean>

<%
Object o = pageContext.getAttribute("member");
System.out.println(o);
System.out.print(member);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>