<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 한글 처리 --%>
<% request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>cookie를 이용한 로그인</title>

</head>

<body>

	<h2>로그인 결과</h2>
	
	<!-- 아이디와 패스워드가 같으면 로그인 성공 -->
	<%-- <%
	
	if(id.equals(pw)) {
		// 쿠키 만들기
		response.addCookie(new Cookie("ict", URLEncoder.encode("jsp", "UTF-8")));
		/* out.println("<h2>로그인 성공</h2>"); */		
	} else {%>
		<!-- out.println("<h2>로그인 실패</h2>"); -->
		<script type="text/javascript">
			alert("로그인 실패");
			history.go(-1);
		</script>
	<%}%>
	
	<!-- <a href="ex28.jsp">다른 페이지로 넘어가기</a> -->
	<% response.sendRedirect("ex28.jsp"); %> --%>

	<%
	
	if(id.equals(pw)) {
		
		// 쿠키 만들기
		response.addCookie(new Cookie("ict", URLEncoder.encode("jsp", "UTF-8")));
	}
	
	response.sendRedirect("ex28.jsp");
	
	%>

</body>
</html>