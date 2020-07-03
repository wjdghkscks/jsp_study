<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP internal object - request</title>
</head>
<body>

<!-- 
* JSP 내장 객체
- JSP에서 사용할 수 있도록 지원하는 객체
- request, response, out,
  page, pageContext, session, application,
  config, exception

	1. request
	
		- 웹 프로그래밍에서 가장 많이 사용되는 객체
		- 클라이언트가 요청한 정보를 담고 있는 객체
		- 파라미터 값을 가지고 있음
		- request 의 생명 주기는 response 가 이루어질 때까지
				  
		- request 가 가지고 있는 정보들
			1) 클라이언트의 정보 및 서버 정보를 얻을 수 있는 메소드
			2) HTML <form> 정보와 요청 파라미터의 정보를 제공
			3) 요청한 <head> 의 정보 제공
			
		- request 의 주요 메소드
			 1) getRemoteAddr()			: ip 주소
			 2) getContentLength()		: 요청 정보의 길이
			 3) getCharacterEncoding()	: 요청 정보 전송 시 사용한 캐릭터의 인코딩
			 4) getContentType()		: 요청 정보 전송 시 사용한 콘텐츠의 타입
			 5) getProtocol()			: 요청 프로토콜
			 6) getMethod()				: 정보 요청 시 사용한 방식	>>> get / post
			 7) getRequestURI()			: 요청한 URI 경로
			 8) getContextPath()		: JSP 페이지가 속한 컨텍스트 경로
			 9) getServerName()			: 연결 시 사용한 서버의 이름
			10) getServerPort()			: 서버가 실행중인 포트 번호
			
		- HTML <form> 과 요청 파라미터의 정보를 제공하는 메소드
			1) getParameter(String name) : String
		    2) getParameterValues(String name) : String[]
		    3) getParameterMap() : Map
		    4) getParameterNames() : Enumeration
		
		- 요청한 <head> 의 정보를 제공하는 메소드
			1) getHeader(String name) : 헤더값 구하기 
	  		2) getHeaders(Enumeration) : 헤더 목록 구하기
	 		3) getHeaderNames() : 헤더 이름 구하기
	 		4) getIntHeader(String name) : 헤더값을 정수값으로 구하기 
	 		5) getDateHeader(String name) : 헤더값을 시간값으로 구하기 
		
		- 다른 주요 메소드
			1) 포워딩 : request.getRequestDispatcher("이동장소").forward(request,response);
	  		2) session 호출 : request.getSession();
	  		3) request 속성을 통한 데이터(값) 저장 : request.setAttribute("이름",데이터);	
	  		4) request 속성을 통한 저장된 데이터 호출 : request.getAttribute("이름"); 
	  		  
 -->

	<h2> request : 클라이언트 및 서버 정보 보기 </h2>
 	<h3>
 		<ul>
 			<li> 클라이언트 IP 			: <%=request.getRemoteAddr() %> </li>
 			<li> 요청 정보 길이 		: <%=request.getContentLength() %> </li>
 			<li> 요청 정보 인코딩 		: <%=request.getCharacterEncoding() %> </li>
 			<li> 요청 정보 컨텐츠 타입	: <%=request.getContentType() %> </li>
 			<li> 요청 정보 프로토콜 	: <%=request.getProtocol() %> </li>
 			<li> 요청 정보 전송 방식	: <%=request.getMethod() %> </li>
 			<li> 요청 URI 				: <%=request.getRequestURI() %> </li>
 			<li> 컨텍스트 경로			: <%=request.getContextPath() %> </li>
 			<li> 컨텍스트 정보  		: <%=request.getServletContext() %> </li>
 			<li> 서버 이름 				: <%=request.getServerName() %> </li>
 			<li> 서버 포트 				: <%=request.getServerPort() %> </li>
 		</ul>
 	</h3> 
 	
 	<hr>
 	
</body>
</html>