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
<title> 상품 페이지</title>
</head>
<body>
<h1>EMart 상품 페이지</h1>
<%
//카트에 반영할.. 상품명, 개수를 담을려고 map을 만들었다.
//session에 setAttribute해서 보낼 것임
Map<String, Integer> map = new HashMap<>();



String food = request.getParameter("food");

Object o = session.getAttribute("cartMap");
//map에다가 추가를 해주는 것은 o가 null이 아닐 때만 가능
//추가 하기 전에 맨 앞에서 작성한 new HashMap<>();을 원래 있던 cartMap
//그러니까 session에 달아놓은 cartMap으로 교체를 해주어야 함
//결론, o가 null이 아니면 map을 cartMap으로 바까 달라! null이면 new HashMap<>(); 그냥 쓰겠음

if(o != null) {
	map = (Map<String, Integer>) o;
}
if(food != null) {
	if(map.containsKey(food)) {
		map.put(food, map.get(food)+1);
	} else {
		map.put(food, 1);
	}

}

session.setAttribute("cartMap", map);

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
<input type="submit" value="장바구니 담기"/> <br />
장바구니: <%= map.size() %>개
</form>
<a href="cartMap.jsp">장바구니 보기</a>
</body>
</html>

</body>
</html>