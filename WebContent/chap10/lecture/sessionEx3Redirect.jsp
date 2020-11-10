<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
 <%-- <%@ page session ="false" %> 12번~~ --%>
<%

request.setAttribute("attr1", "value1");
session.setAttribute("attr2", "value2");//같은 session을 쓰는 여러 request가 공유하는 객체
HttpSession sess = request.getSession();
// session을 request에서 꺼내서 쓸 수 있다.
//jsp에서 session을 안만들 수 있음 기본값으로 만들어져는 있음
System.out.println(session == sess); //true
response.sendRedirect("sessionEx3RedirectTarget.jsp");


%>