<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! 
    public int add(int a, int b) {
    	int c = a + b;
    	return c;
    }
    
    public int substract(int a, int b) {
    	int c = a-b;
    	return c;
    }
    %>
<!DOCTYPE html>
<html>
<head><title>스크립트에서 선언부 사용하기</title>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
int value1 = 3;
int value2 = 9;

int addResult = add(value1, value2);
int substractResult = substract(value1, value2);



%>

<%= value1 %> + <%= value2 %> = <%= addResult %>
<br>
<%= value1 %> - <%= value2 %> = <%= substractResult %>
</body>
</html>