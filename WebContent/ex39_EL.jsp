<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Express Language : 표현 언어</title>
<style type="text/css">
	* {
		margin: 10px;
	}
	h2 {
		text-align: center;
		padding: 10px;
	}
	p {
		padding: 20px 0;
	}
</style>
</head>
<body>

<%-- 

* EL (Express Language)
- JSP 에서 사용 가능한 새로운 스크립트 언어
- 표현식( <%= 변수/메소드 %> ) 의 사용을 대체	==>	${변수/메소드/계산식}
- 파라미터 값을 받을 때도 사용
- JSP의 4대 저장소들(pageContext, request, session, application)에 저장된 정보들을 바로 호출 가능

- 

--%>

	<h2> 표현식 산술 연산 사용 예제 </h2>
		<p>
			<li> 15 + 7 = <%= 15 + 7 %> </li>
			<li> 15 - 7 = <%= 15 - 7 %> </li>
			<li> 15 * 7 = <%= 15 * 7 %> </li>
			<li> 15 / 7 = <%= 15 / 7 %> </li>
		</p>
	
	<hr>

	<h2> EL 산술 연산 사용 예제 </h2>
		<p>
			<li> 15 + 7 = ${15 + 7} </li>
			<li> 15 - 7 = ${15 - 7} </li>
			<li> 15 * 7 = ${15 * 7} </li>
			<li> 15 / 7 = ${15 / 7} </li>
		</p>
		
	<hr>
	
	<h2> 표현식 변수 사용 예제 </h2>
		<p>
			<% int su1 = 125 + 25; %>
			<li>su1 = <%=su1%></li>
		</p>
	
	<hr>
	
	<h2> EL 변수 사용 예제 </h2>
	<%-- EL은 JSP에서 바로 만든 변수의 값은 호출할 수 없음 --%>
	<%-- 따라서 4대 저장소에 저장 후 호출해야 함 --%>
	<%-- 4대 저장소 : pageContext, request, session, application --%>
	<%-- 우선순위: pageContext > request > session > application --%>
		<p>
			<% 
			int su2 = 125 + 25;
			pageContext.setAttribute("su2", su2);
			%>
			<li>su2 = ${su2}</li>
		</p>
	
	<hr>
	<%-- 우선순위: pageContext > request > session > application --%>
		<% pageContext.setAttribute("pc", "i3"); %>
		<% request.setAttribute("pc", "i5"); %>
		<% session.setAttribute("pc", "i7"); %>
		<% application.setAttribute("pc", "i9"); %>
		
		<p>
			<li> 호출하기 (우선순위 존재) </li>
			<li> ${pc} </li>
			<%-- 원하는 범위 지정 가능 --%>
			<li> ${pageScope.pc} </li>
			<li> ${requestScope.pc} </li>
			<li> ${sessionScope.pc} </li>
			<li> ${applicationScope.pc} </li>
		</p>
		
		
</body>
</html>