<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>JSP 기본 객체 - request</title>

</head>

<body>

	<!-- Ex12 페이지에서 데이터가 넘어옴 -->
	<h1>Ex13 Page</h1>
	<h2>pageConext 데이터</h2>
	<h3>이름: <%=pageContext.getAttribute("name")%></h3>
	<h3>나이: <%=pageContext.getAttribute("age")%></h3>
	
	<hr>
	
	<h2>request 데이터</h2>
	<h3>이름: <%=request.getAttribute("name")%></h3>
	<h3>나이: <%=request.getAttribute("age")%></h3>

</body>

</html>