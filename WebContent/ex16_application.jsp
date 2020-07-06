<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>JSP 기본 객체 - application</title>
</head>

<body>

<%--

* application

- 모든 사용자와 공유할 정보를 저장
- 주로 웹 어플리케이션의 설정 정보를 저장

- 속성을 활용한 데이터 저장과 호출
	
	저장	: application.setAttribute("이름", 데이터);
	호출	: application.getAttribute("이름");

- 어플리케이션이 종료될 때까지 데이터가 유효

--%>

	<%
		pageContext.setAttribute("name", "홍길동");
		pageContext.setAttribute("age", 20);
		
		request.setAttribute("name", "태권브이");
		request.setAttribute("age", 40);
		
		session.setAttribute("name", "둘리");
		session.setAttribute("age", 37);
		
		application.setAttribute("name", "똘이장군");
		application.setAttribute("age", 78);
	%>

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
	
	<!-- Forward -->
	<%-- <% request.getRequestDispatcher("ex17_application.jsp").forward(request, response); %> --%>
	
	<!-- SendRedirect -->
	<% response.sendRedirect("ex17_application.jsp"); %>

</body>

</html>