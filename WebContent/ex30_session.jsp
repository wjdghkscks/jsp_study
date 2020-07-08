<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>세션 session</title>

</head>

<body>

<%-- 

* 세션 session

- JSP 기본 내장 객체
- server 와 client 간 접속을 유지하기 위한 객체
- server 는 session 을 사용하여 (로그인 등) client 상태를 유지할 수 있음
- cookie 는 client 에 값이 저장되는 반면, session 은 서버에 값이 저장됨
- cookie 는 server와 client 모두 생성하지만, session 은 server 만 생성함
- client 가 서비스 요청시 server 는 client 를 구별할 수 있는 session ID 를 부여하며,
  server 는 해당 ID로 client의 이전 접속 여부를 구분함
  
- 주요 메소드
	1) session.setAttribute("이름", "값")		: data 저장
	2) session.getAttribute("이름")				: data 호출
	3) session.removeAttribute("이름")			: 속성을 이용한 data 삭제
	4) session.getID()							: session 의 고유 ID 를 구함
	5) session.getCreationTime()				: session 이 생성된 시간을 구함
	6) session.getLastAccessedTime()			: 가장 최근 접근 시간을 구함
	7) session.invalidate()						: session 전체 초기화
	8) session.setMaxInactiveInterval(시간)		: session 시간 제한 (초단위)

--%>

	<h1>세션 연습 1</h1>
	<% 
		// Date 객체 생성
		Date time = new Date();
	%>
	
		<p> 세션 ID : 				<%= session.getId() %> </p>
		<p> 현재 시간 : 			<%= time %> </p>
		
		<% time.setTime(session.getCreationTime()); %>
		<p> 세션 생성 시간:			<%= time %> </p>
		
		<% time.setTime(session.getLastAccessedTime()); %>
		<p> 세션 최근 접근 시간:	<%= time %> </p>

</body>
</html>