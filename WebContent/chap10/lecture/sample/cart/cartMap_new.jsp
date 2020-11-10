<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>🛒장바구니</title>
</head>
<body>
<h2>담으신 상품</h2>
<ul>

<%
Map<String, Integer> cart = (Map<String, Integer>)session.getAttribute("cartMap_new");
if(cart != null && cart.size()>0) {
	
	for(Map.Entry<String, Integer> entry : cart.entrySet()) {
		//cart.entrySet할려 했는데 null이거나 map만 있고 내용물이 없으면 어쩔 -> null처리
%>
		<li>
		<%= entry.getKey()%> : <%= entry.getValue()%>
		</li>
		
<%
	}
		
} else {
%>
	<li>비어있음</li>
<%
}
%>	

</ul>
</body>
</html>