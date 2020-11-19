<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Object o = request.getAttribute("member");
System.out.println("fw: "+o);

%>

<jsp:useBean id="member" class =chap08.member.MemberInfo
scope="request"></jsp:useBean>
멤버라는 이름의 attr이 존재하면 꺼내서 씀
없어야 만듦. 그래서 javaBeanEx4에서랑 javaBeanForward랑 코드
똑같은데 앞에선 만든거고 여기서는 꺼내서씀 
<%
/*chap08.member.MemberInfo member 
= (chap08.member.MemberInfo) request.getAttribute("member");*/

%>
<%
System.out.println("fw:"+member);
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