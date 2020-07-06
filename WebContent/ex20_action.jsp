<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>액션 태그 - include</title>

</head>

<body>

<%-- 
* action 태그
- JSP 페이지 간 흐름을 제어
- JAVA  빈즈 컴포넌트 지원
- 사용법
	
	<jsp:액션명령></액션명령>, <jsp:액션명령 />
	
1. include
- 현재 페이지에서 다른 페이지 내용을 보여줌
	
	1) include 액션
	- 제어권이 다른 페이지에 가서 처리 후 결과만 가져옴
	- 사용법
		
		<jsp:include page="가져올_페이지_이름" />		<< 파라미터 X
		
						OR
		
		<jsp:incluce page="가져올_페이지_이름">			<< 파라미터 O
			<jsp:param value="" name="">
		</jsp:include>
		
	- 가져온 페이지에서 만든 변수를 현재 페이지에서 사용 불가능
		
			
	2) include 지시어
	- 다른 페이지의 소스 전체를 가져와 현재 페이지에서 한 번에 처리
	
	- 사용법
		
		<%@ include file="가져올_페이지 이름" %>
	
	- 파라미터 값 전달 불가
	- 가져온 페이지에서 생성한 변수를 현재 페이지에서 사용 가능

-->

	<%-- include --%>
	<h2>include 액션</h2>
	
	<jsp:include page="ex07_response.jsp" />
	
	<hr>

	<%-- include 액션에서 파라미터 값을 지정 --%>
	<%-- 다른 페이지에서 한글 처리를 했지만, 한글이 깨지는 현상 발생 --%>
	<%-- 따라서 해당 페이지에도 한글 처리를 해야 함 --%>
	<jsp:include page="ex08_result.jsp">
		<jsp:param value="태권브이" name="id"/>
		<jsp:param value="k1111" name="pw"/>
	</jsp:include>

	<hr>
	
	<%-- include 지시어 --%>
	<h2>include 지시어</h2>
	<%@ include file="ex07_response.jsp" %>



</body>

</html>