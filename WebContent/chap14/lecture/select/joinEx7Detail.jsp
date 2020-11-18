<%@page import="java.sql.*"%>
<%@page import="chap14.*" %>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");
String sql = "SELECT e1.eno, e1.ename, e1.hiredate, e1.salary, d.dname, e1.job, s.grade, e2.ename "
			+"FROM employee e1, employee e2, department d, salgrade s " 
			+"WHERE e1.dno = d.dno "
			+"AND e1.salary BETWEEN s.losal and s.hisal "
			+"AND e1.manager = e2.eno(+) "
			+"AND e1.eno = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, eno); 

ResultSet rs = pstmt.executeQuery();
Employee emp = null;

while(rs.next()) {
	int col = 1;
	emp = new Employee();
	emp.setEno(rs.getInt(col++));
	emp.setEname(rs.getString(col++));
	emp.setHireDate(rs.getTimestamp(col++).toLocalDateTime());
	emp.setSalary(rs.getInt(col++));
	emp.setDname(rs.getString(col++));
	emp.setJob(rs.getString(col++));
	emp.setSalGrade(rs.getInt(col++));
	emp.setManager(rs.getString(col++));
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
<div class="container m-5">
<h1><%= eno %>사원 info</h1>
<ul>
	<li>이름: <%= emp.getEname() %></li>
	<li>사번: <%= emp.getEno() %></li>
	<li>고용일: <%= emp.getHireDate() %></li>
	<li>월급: <%= emp.getSalary() %></li>
	<li>부서명: <%= emp.getDname() %></li>
	<li>담당업무: <%= emp.getJob() %></li>
	<li>월급등급: <%= emp.getSalGrade() %> </li>
	<li>매니저: <%= emp.getManager() %></li>

</ul>
</div>
</body>
</html>