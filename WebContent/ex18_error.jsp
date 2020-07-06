<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ex19_error.jsp" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>error 처리</title>

</head>

<body>

	<h2>에러 처리</h2>
	<h3>name : <%Integer.parseInt(request.getParameter("name"));%></h3>
	
<%-- 1) try ~ catch --%>

	<%-- 
	
	<%try {%>
		<h3>name : <%Integer.parseInt(request.getParameter("name"));%></h3>
	<%} catch(Exception e) {
		out.println("<b> name 파라미터 값이 올바르지 않습니다.</b>");
		response.sendRedirect("ex19_error.jsp")
	  }%> 
	  
	--%>
	  
<%-- 
	2) error 페이지 지정
	
	- 페이지 지시어 활용
	- errorPage="에러_페이지_주소"
--%>

	
	
</body>
</html>