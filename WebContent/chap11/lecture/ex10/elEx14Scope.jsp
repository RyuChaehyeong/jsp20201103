<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%--
각 영역의 attribute를 <name, object>쌍으로 가지고 있는 map
pageScope
requestScope
sessionScope
applicationScope
 --%>
 page영역에서랑, request영역에서 같은 이름을 가지고 있는 attr이 있다면? <br/>
 해당 scope에 있는 attr을 찾기 위해 scope map에서 찾아야 한다.
<%
pageContext.setAttribute("myAttr1", "page Value1!!!!!");
pageContext.setAttribute("my attr1", "my value1");

request.setAttribute("myAttr1", "my request Value1!!!!!");
request.setAttribute("myAttr2", "my Value2!!!!!!");
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
<hr>
1. myAttr1은 page랑 request영역에 있음 <br/>
${myAttr1 } <br />
page부터 찾기때문에 페이지거만 나타낸다.
<hr>
2. my attr1은 page에 하나밖에 없어서 scope map으로 안찾아도 되지만 그냥 함 <br>
scope map이름 쓰고 대괄호로 안에 큰따옴표로 attr이름을 감싸서 넣음
${pageScope["my attr1"] } <br />
<hr>
3. myAttr2는 request영역에만 존재 여기선 scope map으로 안찾앗지만 request에서 잘 찾아서 꺼내옴 <br>
${myAttr2 } <br />
<hr>
4. 1번에서 못찾아온 request영역의 myAttr1을 찾기 위해 scope map이름 써줌 <br>
해당scope map.attr이름, map이 영어로 시작하는 한단어이면 map.attr이름으로 쓸 수 있다. <br>
${requestScope.myAttr1 } <br />
</body>
</html>







