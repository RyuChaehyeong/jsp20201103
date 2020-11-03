<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    Set<Integer> genLotto() {
    	Set<Integer> lotto = new HashSet<>();
    	while(lotto.size() < 6){
	    	int rand = (int)(Math.random()*45+1);
    		lotto.add(rand);		
    	}
    	
    	return lotto;
    }
    %>
    
    <%! 
    String colorClass (int num) {
    	return "lotto-color"+(num/10)*10;
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<style>
.lotto-ball {
	border: 5px solid black;
	width: 100x;
	height: 100px;	
	border-radius: 50%;
	text-align: center;
	
}
.lotto-color0{
	background-color: red;
}
.lotto-color10{
	background-color: orange;
}
.lotto-color20{
	background-color: yellow;
}
.lotto-color30{
	background-color: green;
}
.lotto-color40{
	background-color: blue;
}
</style>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
Set<Integer> lotto = genLotto();
%>

<%
for(int num : lotto) {
%>
	<div class = "lotto-ball <%=colorClass(num)%>"><%= num %></div>
<%
}
%>	

</body>
</html>