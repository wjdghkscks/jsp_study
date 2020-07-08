<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
<style type="text/css">
	h2 {
		text-align: center;
	}
	* {
		margin : 20px;
	}
	li {
		list-style: none;
		padding : 0 0 0 30px;
	}
</style>
<script type="text/javascript">
	function select_go() {
		location.href="ex35_session.jsp";
	}
	function login_go() {
		location.href="ex33_session.jsp";
	}
</script>
</head>
<body>

	<h2> 장바구니 보기 </h2>
		<p>
		<% 
			ArrayList<String> list = 
				(ArrayList<String>)(session.getAttribute("list"));
		
			if((list == null) || (list.size() == 0)) {
				out.println("장바구니에 상품이 존재하지 않습니다.");
			} else {
				for(String k : list) {
					out.println("<li>");
					out.println(k);
					out.println("</li>");
				}
			}
		%>
		</p>
		<hr>
		<button onclick="select_go()">뒤로가기</button>
		<button style="float: right;" onclick="login_go()">로그인</button>

</body>
</html>