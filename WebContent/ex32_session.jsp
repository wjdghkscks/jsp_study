<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 속성을 이용한 데이터 삭제</title>
</head>
<body>
	
	<h2> 세션 연습 3 </h2>
	
	<%-- session data 삭제 --%>
	
	<%-- 1. 특정 속성만 삭제 --%>
	<%-- <% session.removeAttribute("ICT"); %> --%>
	<%-- <p> 세션 데이터 호출 : <%= session.getAttribute("ICT") %> --%>
	
	<%-- 2. session 시간 제한 --%>
	<%-- <% session.setMaxInactiveInterval(10); %> --%>
	<%-- <p> 세션 ID : <%= session.getId() %> </p> --%>
	<%-- <p> 세션 데이터 호출 : <%= session.getAttribute("ICT") %> </p> --%>
	
	<%-- 3. session 전체 초기화 --%>
	<% session.invalidate(); %>
	<p> 세션 ID : <%= session.getId() %> </p>
	<%-- <p> 세션 데이터 호출 : <%= session.getAttribute("ICT") %> </p> --%>
	<%-- session data 호출 자체가 불가능 --%>
	

</body>
</html>