<%@page import="chap07.User"%>
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
<title>subEx4</title>
</head>
<body>
<%
List<User> users = (List<User>)request.getAttribute("users");
%>

<div class="container">
	<table class="table table-striped">
		<!-- bootstrap에서 table보고 잘 끼워 넣으면 됨
			 tr은 행의 첫줄에서 th(index)을 감싸고, 
			 밑에 행부터는 td로 cell 내용이 들어감 -->
		<thread>
			<tr>
				<th>Number</th>
				<th>Name</th>
				<th>Address</th>
				<th>Age</th>
			</tr>
		</thread>
			<%
			for (int i = 0; i<users.size(); i++){
			%>
				<tr>
					<td><%= i+1%></td>
					<td><%=users.get(i).getName()%></td>
					<td><%=users.get(i).getAddress()%></td>
					<td><%=users.get(i).getAge()%></td>
				</tr>				<!-- HTML코드 쪽에서는 Expression 써야대는거 깜빡 -->
									<!-- list에서 값 얻어오는 것 get(i)로,
										User 객체에서 이름 주소 나이 얻어오기 getMethod()로 -->
			<%
			}
			%>				
	</table>
</div>
</body>
</html>