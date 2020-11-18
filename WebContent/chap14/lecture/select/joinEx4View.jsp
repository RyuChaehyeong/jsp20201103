<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%
String grade = request.getParameter("grade");
String sql = "SELECT e.ename "
			+"FROM employee e, salgrade s "
			+"WHERE e.salary BETWEEN s.losal AND s.hisal "
			+"AND s.grade = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, grade); //sql 완성

ResultSet rs = pstmt.executeQuery();

String name ="";

List<String> list = new ArrayList<>();
while(rs.next()) {
	name = rs.getString(1);
	list.add(name);
}
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
<%= grade %>순위의 월급 명단 <br />
<ul>
<%
for(String n : list) {	
%>
	<li><%= n %></li>
<%
}
%>
</ul>
</body>
</html>