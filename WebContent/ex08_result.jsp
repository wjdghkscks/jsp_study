<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>파라미터값 받기 (ex08)</title>

<script type="text/javascript">

	function send_go(f) {
		f.action="ex09_result.jsp";
		f.submit();
	}
	
	function send_go2(f) {
		f.action="ex09_result.jsp";
		f.submit();
	}
	
	function send_go3() {
		location.href = "ex09_result.jsp";
	}
	
	function send_go4() {
		location.href = "ex09_result.jsp?id=<%=id%>&pw=<%=pw%>";
	}
	
	function send_go5() {
		history.go(-1);
	}
	
</script>

</head>

<body>

	<h1>파라미터 결과 보기</h1>
	<h2>
		<li>id : <%=id%> </li>
		<li>pw : <%=pw%> </li>
	</h2>
	
	<!-- 다른 페이지로 이동하기 -->
	
	<%-- 1. redirect 
	 
	<%
		response.sendRedirect("ex09_result.jsp");
	%> 
	
	--%>
	 
	 
	 <%-- 2. forward
	 
	 <%
	 	request.getRequestDispatcher("ex09_result.jsp").forward(request, response);
	 %>
	 
	 --%>
	 
	 <!-- 다른 페이지로 이동하기 (중간 페이지에서 이벤트 처리) -->
	 
	 <%-- 3. <a> link
	 
	<a href="ex09_result.jsp">다른 페이지로 이동(파라미터X)</a> <br>
	<a href="ex09_result.jsp?id=<%=id%>&pw=<%=pw%>">다른 페이지로 이동(파라미터O)</a> <br>
		
	 --%>
	 
	<%-- 4. JavaScript 를 이용 --%>	 
	
	<form>
		<input type="button" value="보내기(파라미터 X)" onclick="send_go(this.form)">
	</form>

	<form method="post">
		<input type="button" value="보내기(파라미터 O)" onclick="send_go2(this.form)">
		<input type="hidden" name="id" value="<%=id%>">
		<input type="hidden" name="pw" value="<%=pw%>">
	</form>
	
	<button onclick="send_go3(this.form)">보내기(파라미터 X)</button>
	<button onclick="send_go4(this.form)">보내기(파라미터 O)</button>
	<button onclick="send_go5(this.form)">뒤로가기</button>
	
</body>

</html>