<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// ex34_session 에서 저장한 session 정보들을 사용함
	String log = (String)(session.getAttribute("log"));

	if(log.equals("no")) {%>
	<script>
		alert("로그인 실패");
		location.href="ex33_session.jsp";
	</script>
	<%} else if(log.equals("ok")) {%>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function add_list(f) {
		f.action="ex36_addlist.jsp";
		f.submit();
	}
	
	function view_cart() {
		location.href = "ex37_list.jsp";
	}
	
	function logout_go() {
		location.href = "ex38_logout.jsp";
	}
</script>
</head>
<body>

	<h2> <%= session.getAttribute("id") %>님 로그인 성공 </h2>
	<hr>
	<h2> 상품 선택 </h2>
	<br>
	<form method="post">
		<select name="fruits">
			<option>:: 선택하세요 ::</option>
			<option>수박</option>
			<option>참외</option>
			<option>망고</option>
			<option>키위</option>
			<option>딸기</option>
		</select>
		<input type="button" value="장바구니에 추가" onclick="add_list(this.form)">
	</form>
	<hr>
		<button onclick="view_cart()">장바구니 보기</button>
		<button onclick="logout_go()">로그아웃</button>
	
</body>
</html>

<%}%>