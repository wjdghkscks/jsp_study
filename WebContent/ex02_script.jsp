<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
* JSP (Java Server Page)
- HTML 안에서 Java 코드를 작성할 때 사용
- JSP의 구성요소
	디렉티브		>>> <%@		%>
	선언부			>>> <%!		%>
	스크립트릿		>>> <%		%>
	표현식			>>>	<%=		=%>
	
2) 선언부
	- 전역변수 선언 및 메소드 선언을 할 때 사용
	- <%! 자바_코드 %>

3) 스크립트 요소 (Scriptlet, 스크립트릿)
	- 순수 자바코드를 작성(실행)할 때 사용
	- <% 자바_코드 %>
	
4) 표현식
	- 변수값 또는 메소드 결과를 출력할 때 사용
	- EL 또는 JSTL 이 해당 역할을 대신함
	- <%= 자바_코드 %>
	
** 선언부/스크립트요소/표현식 은 겹쳐서 사용할 수 없음

 --%>

	<h2>1부터 10까지 출력하기</h2>
	<%
		for(int i = 0; i < 11; i++) {
			// System.out.println(i);
			
			// 웹브라우저에 출력하기 위한 내장 객체 out 을 사용
			out.println("<h4>" + i + "</h4>");
			
		}
	%>
	
	<hr> <!-- ------------------------------------------------------------------------------ -->
	
	<h2>0부터 10까지 출력 및 0부터 10까지의 합 출력하기</h2>
	<%
		int sum = 0;
	
		for(int i = 0; i < 11; i++) {
			out.print(i);
			sum = sum + i;
		}
		
		out.println("<h4>0부터 10까지의 합: " + sum +"</h4>");
		
	%>
	
	<hr> <!-- ------------------------------------------------------------------------------ -->
	
	<%-- 선언부 --%>
	<%! int k = 0; %>
	
	<%-- 내용 - 스크립트릿 --%>
	<%
		for(int i = 0; i < 11; i++) {
			out.print(i);
			k = k + i;
		}
	%>
	<%-- 결과 - 표현식 --%>
	<p> 0부터 10까지의 합: <%= k %> </p>
	
	<hr> <!-- ------------------------------------------------------------------------------ -->
	
	<%!
		// 더하기 메소드 (반환값 있음)
		public int add(int su1, int su2) {
			return su1 + su2;
		}
		
		// 빼기 메소드 (반환값 없음)
		int res = 0;
		public void sub(int su1, int su2) {
			res = su1 - su2;
		}
		
	%>
	
	<p> 7 + 5 = <%= add(7,5) %> </p>
	
	<%-- void 메소드의 결과값을 출력하기 위하여 메소드를 먼저 실행 --%>
	<% sub(7,5); %>
	<p> 7 - 5 = <%= res %> </p>
	
	<hr> <!-- ------------------------------------------------------------------------------ -->
	
	<h2>오늘 날짜 및 오늘 운수 출력하기</h2>
	
	<% 
		Calendar now = Calendar.getInstance();
	
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH)+1;
		int day = now.get(Calendar.DATE);
	%>
	
	<p>오늘 날짜는 <%=year%>년 <%=month%>월 <%=day%>일입니다.</p>
	
	<%! int p = 0; %>
	<%
		p = (int)(Math.random()*101);
	%>
	<p>오늘의 행운 지수는 <%=p%>% 입니다.</p>
	
	

</body>
</html>