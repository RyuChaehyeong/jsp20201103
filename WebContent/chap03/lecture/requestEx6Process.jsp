<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<a href="requestEx6Form.jsp"></a>


<%
Set<Integer> lotto = new HashSet<>();
while(lotto.size()<6) {
	lotto.add((int)(Math.random()*45+1));
}
out.print("당첨 번호");
out.print(lotto);
out.print("<br>");
String[] lotto_num = request.getParameterValues("num");

int cnt = 0;

if(lotto_num.length == 6) {
	int[] lotto6 = new int[6];
	out.print("선택한 번호[ ");
	for(int i = 0; i<lotto_num.length; i++) {
		lotto6[i] = Integer.valueOf(lotto_num[i]);
		out.print(lotto6[i]+" ");
	}
	out.print("]");
	Iterator<Integer> iterator = lotto.iterator();
	while(iterator.hasNext()) {
		int correct_num = iterator.next();
		for(int my_num : lotto6) {
			if(correct_num == my_num) {
				cnt++;
			}
		}
	}	
}

%>	
<br>
맞힌 개수: <%= cnt %>
</body>
</html>