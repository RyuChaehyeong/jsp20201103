<%@page import="chap08.member.MemberInfo"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String sql = "SELECT id, password, name, registerDate, email FROM...";
ResultSet rs = null;

MemberInfo m = new MemberInfo();

if(rs.next()) {
	int col =  1;
	m.setId(rs.getString(col++));
	m.setPassword(rs.getString(col++));
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--현재 페이지 --%> %>
아이디: <%=m.getId() %> <br/>
암호: <%= m.getPassword() %> <br/>

<%-- 같은 request 영역의 다른 페이지에서 쓰도록--%>
<%
request.setAttribute("member", m);
%>
<jsp:forward page="otherPage.jsp"></jsp:forward>

<%--같은 session 다른 페이지에서 쓰도록 --%>
<%
session.setAttribute("member", m);
%>


 </body>
</html>