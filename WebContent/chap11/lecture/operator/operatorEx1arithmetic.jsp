<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
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
${4 + 5 } <br />
${3 - 7 } <br />
${9 * 9 } <br />
${15 / 2 } <br /> <!-- 7.5, java 문법이 아님 -->
${15 div 2 } <br />
${31 % 3 } <br />
${31 mod 3 } <br />

<hr />

${"10" + 5 } <br /> <!-- string이어도 숫자로 변경될 수 있으면 변경된다. -->
<%-- ${"ten" + 5 } <br /> <!-- 수로 변경될 수 없는 경우에는 exception --> --%>

${abc + 5 } <br /> <!-- abc는 null이어서 0으로 계산됨 -->
</body>
</html>