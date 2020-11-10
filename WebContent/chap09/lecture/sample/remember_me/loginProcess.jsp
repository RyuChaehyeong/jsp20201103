<%@page import="chap09.Cookies"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

	//쿠키 유틸리티 메소드 쓰기 위해 Cookies 객체 생성
Cookies cookies = new Cookies(request);

boolean login = false;
if(id != null && id.equals(pw)) {
	login = true;
}

if(login) {
	//session.setAttribute("user", id);
	session.setAttribute("user", id);
	
	//JSESSIONID 쿠키 얻고, path, HttpOnly setting
	Cookie cookie = cookies.getCookies("JSESSIONID");
	cookie.setPath(request.getContextPath());
	cookie.setHttpOnly(true);
	
	//remember인 경우 cookie와 session을 하루동안 유지
	String remember = request.getParameter("remember");
	if(remember != null && remember.equals("on")) {
		cookie.setMaxAge(24*60*60);
		response.addCookie(cookie);
		session.setMaxInactiveInterval(24*60*60);
	
	//remember안하는 경우 브라우저 종료시 cookie 파괴
	} else {
		cookie.setMaxAge(-1);
		response.addCookie(cookie);
		session.setMaxInactiveInterval(30*60);
	}
	//로그인 성공시 main.jsp로 redirect
	response.sendRedirect("main.jsp");
} else {
	//로그인 실패시 loginForm.jsp로 redirect
	response.sendRedirect("loginForm.jsp");
}
%>