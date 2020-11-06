<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>

<%
response.sendRedirect("redirectEx1target.jsp");
//이 메소드 쓰면 파라미터에 들어간 목적지로 다시 요청을 보내라고 브라우저에게 명령함
//여기 아니다 다른데로 가라
//비교)) forward는 같은 요청을 건네줌
//redirect에 온 request는 응답하면서 사라짐 응답이 끝나면 응답자체가
//요청하라는 의미임

%>
