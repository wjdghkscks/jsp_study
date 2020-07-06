<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>JSP 기본 객체 - pageContext</title>

</head>

<body>

<%-- 
	
* pageContext

- 하나의 JSP 페이지 내에서 공유될 값을 저장함
- 해당 페이지와 1:1로 연결될 객체를 의미
- 해당 페이지 내에서 만큼은 모든 객체를 생성하고 관리함

	getRequest(), getResponse, getOut(), getPage(), getSesion,
	getServletContext(), getServletConfig, getException()
	
- 속성을 활용한 데이터 저장과 호출
	
	저장	  : pageContext.setAttribute("이름", 데이터);
	호출 	  : pageContext.getAttribute("이름");
	
- 해당 페이지의 데이터는 페이지 내에서만 유효한 데이터
- 해당 페이지를 벗어나면 데이터도 사라짐

 --%>
 
	<%
		pageContext.setAttribute("name", "홍길동"); 
		pageContext.setAttribute("age", "24");

	%>
 
	<h3>이름: <%=pageContext.getAttribute("name")%></h3>
	<h3>나이: <%=pageContext.getAttribute("age")%></h3>

</body>

</html>