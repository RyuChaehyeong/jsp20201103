<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<%
String dno = request.getParameter("dno");
String ename = request.getParameter("ename");
ename = ename.toUpperCase();

String sql = "SELECT ename FROM employee "
        + "WHERE dno = ? AND ename LIKE ? ";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\fluid\\Documents\\Wallet_mydb501";
String id = "mydb17";
String pw = "adminAdmin12";

Connection con = DriverManager.getConnection(url, id, pw);

PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(1, Integer.valueOf(dno));
pstmt.setString(2, "%" + ename + "%"); 

ResultSet rs = pstmt.executeQuery();

List<String> list = new ArrayList<>();
while(rs.next()) {
	list.add(rs.getString(1));
}
pstmt.close();
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
<h1><%= dno %> 부서 직원 목록</h1>
<ul>
<%
for(String n : list) {
%>
	<li>
	<%= n %>
	</li>
<%
}
%>
</ul>
</body>
</html>