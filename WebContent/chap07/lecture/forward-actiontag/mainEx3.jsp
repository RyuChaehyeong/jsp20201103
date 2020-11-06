<%@page import="chap07.User"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>

<%
//이름, 주소, 나이
User user = new User();
user.setName("ironman");
user.setAddress("ny");
user.setAge(50);

request.setAttribute("user", user);
%>

<jsp:forward page = "subEx3.jsp"/>
