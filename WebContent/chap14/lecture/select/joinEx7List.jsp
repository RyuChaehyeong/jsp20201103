<%@page import="chap14.Employee"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT eno, ename FROM employee";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);

List<Employee> list = new ArrayList<>();
while(rs.next()) {
	Employee e = new Employee();
	e.setEno(rs.getInt(1));
	e.setEname(rs.getString(2));
	list.add(e);
}

stmt.close();
con.close();
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
<div class="container m-5">
<!-- 사원 목록(사번/이름), 이름 클릭 하면 사원 내용 -->
<h1>사원목록</h1>
<table class="table">
	<tr>
		<th>사번</th>
		<th>이름</th>
	</tr>
	
	<%
	for(Employee emp : list) {
	%>
		<tr>
			<td><a href="joinEx7Detail.jsp?eno=<%= emp.getEno()%>"><%= emp.getEno() %></a></td>
			<td><%= emp.getEname() %></td>
		</tr>
	<%
	}
	%>		

</table>
</div>
</body>
</html>