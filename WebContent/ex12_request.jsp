<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>JSP 기본 객체 - request</title>

</head>

<body>

<%--
	
* request

- 클라이언트가 요청한 정보를 담고 있는 객체

- 속성을 활용한 데이터 저장과 호출
	
	저장	: request.setAttribute("이름", 데이터);
	호출	: request.getAttribute("이름");
	
- response를 하기 전까지 데이터가 유효함
- 우선순위	: pageContext > request
	
--%>

	<%
		pageContext.setAttribute("name", "홍길동");
		pageContext.setAttribute("age", 20);
		
		request.setAttribute("name", "태권브이");
		request.setAttribute("age", 40);
	%>

	<h3>이름: <%=request.getAttribute("name")%></h3>
	<h3>나이: <%=request.getAttribute("age")%></h3>
	
	
	
	<!-- Ex13으로 페이지 이동 방법 -->
	
	<!-- 1) Forward
		- request, response 가 기존 데이터를 사용
	-->

	<% request.getRequestDispatcher("ex13_request.jsp").forward(request, response); %>
	
	<!-- 2) sendRedirec
		- request, response 가 새로운 데이터를 사용
	-->
	
	<%-- <% response.sendRedirect("ex13_request.jsp"); %> --%>

</body>

</html>