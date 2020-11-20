<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("servlet");
list.add("html");
list.add("el");
list.add("css");

pageContext.setAttribute("alist", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
${alist[0] } <br />
${alist[1] } <br />
<!-- 변수값으로 탐색하는게 우리 목적 -->
<%
for(int i=0 ; i< list.size(); i++) {
	pageContext.setAttribute("cnt", i);
	
%>
	${alist[cnt] }
<%
}
%>	
i는 page영역부터 찾음 근데 page에 i가 없었음
자바변수로는 선언되어 있지만 네개의 영역에는 존재하지 않아서 나오지 않았음 
자바 코드가 왕창들어가버렸으니까 다음에 이것을 풀겠다.
사용되는 변수들은 네가지 영역에서 순서대로 찾는다. 
</body>
</html>