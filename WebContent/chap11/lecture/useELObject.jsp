<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
request.setAttribute("name", "최범균");
%>

<body>
요청 URI: {pageContext.request } <br />
request의 name 속성: ${name } <br /> <!-- map.key -->
code 파라미터: ${param.code } <br /> <!-- param도 map -->
<!-- el은  null표시x -->
<%= request.getParameter("code")%> <br />
</body>
</html>