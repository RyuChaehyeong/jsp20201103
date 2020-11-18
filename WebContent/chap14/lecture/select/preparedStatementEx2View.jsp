<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%

String dno = request.getParameter("dno");
String sql = "SELECT max(salary), min(salary), round(avg(salary),1), sum(salary) "
			+"FROM employee "
			+"WHERE dno = ?";	
			
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);

PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(1, Integer.parseInt(dno)); //sql 완성

ResultSet rs = pstmt.executeQuery();
int max = 0;
int min = 0;
double avg = 0;
int sum = 0;

if(rs.next()) {
	max = rs.getInt(1);
	min = rs.getInt(2);
	avg = rs.getDouble(3);
	sum = rs.getInt(4);
}

//6. statement 종료
pstmt.close();
//7. 데이터 베이스 커넥션 종료
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
<h1>최대: <%= max %></h1>
<h1>최소: <%= min %></h1>
<h1>평균: <%= avg %></h1>
<h1>합계: <%= sum %></h1>
</body>
</html>