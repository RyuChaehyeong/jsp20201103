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

String food = request.getParameter("food");

if(food != null) { //null이면 추가x

		Map<String, Integer> map = (Map<String, Integer>) session.getAttribute("cart");
		//cart가 null일수도 있고 아닐 수도 있음 
		if(map == null) {
			map = new HashMap<>();
			session.setAttribute("cart", map); //공유할 수 있게 setAttr
		}
		if(map != null && map.get(food)==0) {
			map.put(food, 1);		
		} else {
			map.put(food, map.get(food)+1);
		}

	
}

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
</form>
<a href="cart_R_m.jsp">장바구니 보기</a>
</body>
</html>
