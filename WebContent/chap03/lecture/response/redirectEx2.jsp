<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
 <!--sendRedirect는 서로 다른 요청이 2개이다. request가 다르니
 데이터를 전달할 때 request에 붙여서 못하니까 아예 queryString으로 함  -->
<%
String han = "한글";
String hanEncoded = URLEncoder.encode(han, "utf-8"); 
String queryString = "?"+"name=abc&id=def&han="+hanEncoded;
response.sendRedirect("redirectEx2target.jsp"+queryString); //주소에 붙이는 정보, 쿼리스트링을 이용하는 방법
%>



