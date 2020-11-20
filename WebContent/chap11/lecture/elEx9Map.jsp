<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("a","java");
map.put("b", "html");
map.put("c", "css");
//property로 쓸 수 없게 map의 키가 숫자로 시작하거나, 키워드이거나, 띄어쓰기가 있거나
map.put("3", "servlet");
map.put("class", "spring");
map.put("my key", "my value");

request.setAttribute("mymap", map);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/
libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
${mymap }
<hr />
${mymap.a } <br />
${mymap.b } <br />
${mymap.c } <br />
<hr />

${mymap["3"] } <br />
${mymap["class"] } <br />
${mymap["my key"] } <br />
<hr />
${mymap['3'] } <br />
${mymap['class'] } <br />
${mymap['my key'] } <br />
<hr />
${mymap[a] } <br />
${mymap[b] } <br />
${mymap[c] } <br />
따옴표 안쓰면 b라는 attr를 페이지영역에서 찾음
map에서 value 꺼낼때 써야댐
</body>
</html>