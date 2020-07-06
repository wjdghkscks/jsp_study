<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>JSP 기본 객체 - application</title>
</head>

<body>

	<!-- ex16에서 데이터가 넘어옴 -->
	<h1>Ex17 Page</h1>

	<h2>pageContext</h2>
	<h3>이름: <%=pageContext.getAttribute("name")%></h3>
	<h3>나이: <%=pageContext.getAttribute("age")%></h3>

	<h2>request</h2>
	<h3>이름: <%=request.getAttribute("name")%></h3>
	<h3>나이: <%=request.getAttribute("age")%></h3>
	
	<h2>session</h2>
	<h3>이름: <%=session.getAttribute("name")%></h3>
	<h3>나이: <%=session.getAttribute("age")%></h3>
	
	<h2>application</h2>
	<h3>이름: <%=application.getAttribute("name")%></h3>
	<h3>나이: <%=application.getAttribute("age")%></h3>

</body>

</html>