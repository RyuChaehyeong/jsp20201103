<%@page import="chap09.Cookies"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <% request.setCharacterEncoding("utf-8"); %>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

boolean login = false;
if(id != null && id.equals(pw)) {
	login=true;
}

if(login) {
	//세션에 유저정보 속성 (attribute) 추가
	session.setAttribute("user", id);
	Cookies cookies = new Cookies(request);
	Cookie cookie = cookies.getCookies("JSESSIONID");
	String remember = request.getParameter("remember");
	if(remember != null && remember.equals("on")) {
		cookie.setMaxAge(24*60*60);
		cookie.setPath(request.getContextPath());
		cookie.setHttpOnly(true);
		response.addCookie(cookie);
		
		session.setMaxInactiveInterval(24*60*60);
	} else {
		cookie.setMaxAge(-1);
	}
	response.sendRedirect("main.jsp");
	//rememberme 체크할 경우 세션을 유지
} else {
	response.sendRedirect("loginForm.jsp");
}
%>
//로그인 성공: main.jsp로 redirection
//로그인 실패: loginForm으로 redirection

