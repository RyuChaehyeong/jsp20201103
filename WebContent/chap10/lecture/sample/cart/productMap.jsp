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
<title>Insert title here</title>
</head>
<body>
<%
Map<String, Integer> map = new HashMap<>();
Object o = session.getAttribute("cartMap");
if(o != null) {
	map = (Map<String, Integer>) o; //세션에 있으면 교체, 없으면 25번 줄 새 해시맵 넣음 
									//여기서 Map<String, Integer> type으로 교체 해주어여  setAttr할 수 있다.
}

//food가 null이 아닐때만 실행

String food = request.getParameter("food");
if(food != null) {
	if( map.containsKey(food)) {
		map.put(food, map.get(food)+1);
	} else { //food가 null이어도 실행
		map.put(food, 1);	
		
	}
}

session.setAttribute("cartMap", map); //다시 세션에 넣어주기

%>
<form action="" method="post">
<select name="food" id="">
	<option value="water">물</option>
	<option value="pizza">피자</option>
	<option value="burger">버거</option>
	<option value="choco">초콜렛</option>
	<option value="icecream">아이스크림</option>
</select>
<br />
<input type="submit" value="장바구니 담기"/>
장바구니: <%= map.size() %>개
</form>
<a href="cartMap.jsp">장바구니 보기</a>
</body>
</html>
