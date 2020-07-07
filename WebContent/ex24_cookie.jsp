<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Cookie</title>

</head>

<body>

<%-- 

* 쿠키

- 웹 브라우저(클라이언트)가 정보를 보관하는 저장소를 의미
- 웹 서버에 정보를 요청할 때, 웹 브라우저는 쿠키와 함께 요청을 전송
- 전송받은 쿠키 정보를 사용하여 웹 서버는 클라이언트가 요청한 데이터를 읽음
- 이후 웹 서버는 쿠키를 이용하여 웹 브라우저에게 정보를 전송

- 쿠키는 웹 서버와 웹 브라우저 양쪽에 생성 가능
- JSP에서는 웹 서버에서 생성하는 쿠키를 만듦
- 하나의 브라우저에서는 여러 개의 쿠키를 가질 수 있음
- 보안상의 이유로 쿠키보다는 세션 이용을 권장

- 주요 메소드

	1) setDomain(String pattern)	: 쿠키가 전송될 서버의 도메인을 지정
	
	2) getDomain()		: 쿠키의 도메인을 구함
	
	3) setPath()		: 쿠키의 전송 경로를 지정
	
	4) getPath()		: 쿠키의 전송 경로를 호출
	
	5) getName()		: 쿠키의 이름 호출
	
	6) getValue()		: 쿠키의 값을 호출
	
	7) setMaxAge(int)	: 쿠키의 유효 시간을 초단위로 지정

--%>

	<%-- 쿠키 생성 --%>
	<% 
	Cookie cookie = new Cookie("name", URLEncoder.encode("hong", "UTF-8"));
	response.addCookie(cookie);
	%>
	
	<h2>
		<p> 쿠키 이름 :	<%=cookie.getName() %> </p>
		<p> 쿠키 값 :	<%=cookie.getValue() %> </p>
	</h2>

</body>
</html>