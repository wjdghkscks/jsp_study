<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>JSP 기본 객체 - session</title>
</head>

<body>

<%--

* session

- 서버와 클라이언트 간 접속을 유지시키기 위한 객체

- 속성을 활용한 데이터 저장과 호출
	
	저장	: session.setAttribute("이름", 데이터);
	호출	: session.getAttribute("이름");

- 일반적으로 웹 브라우저가 종료될 때까지 데이터가 유효
- 주로 로그인에 사용

--%>

	<%
		pageContext.setAttribute("name", "홍길동");
		pageContext.setAttribute("age", 20);
		
		request.setAttribute("name", "태권브이");
		request.setAttribute("age", 40);
		
		session.setAttribute("name", "둘리");
		session.setAttribute("age", 37);
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

	<!-- Forward -->
	<%-- <% request.getRequestDispatcher("ex15_session.jsp").forward(request, response); %> --%>

	<!-- SendRedirect -->
	<% response.sendRedirect("ex15_session.jsp"); %>

</body>

</html>