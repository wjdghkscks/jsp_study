<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 한글 처리 --%>
<%	request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>액션 태그</title>

</head>

<body>

	<%-- forward: 페이지 이동 / request, response를 가지고 이동 --%>
	<%-- <jsp:forward page="ex07_response.jsp" /> --%>
	
	<jsp:forward page="ex08_result.jsp" >
		<%-- 파라미터 값 추가 --%>
		<jsp:param value="홍길동" name="id"/>
		<jsp:param value="hong132" name="pw"/>
	</jsp:forward>

	

</body>

</html>