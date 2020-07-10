<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 페이지 이동 - redirect</title>
</head>
<body>

<%-- 
    
[페이지 이동]
    
    - jsp action 에는 forward 만 사용할 수 있지만,
      jstl 에는 redirect 만 사용할 수 있음
    
    - 파라미터 값을 넘길 수 있음
    
    - 사용 방법
    
    	<c:redirect url="이동할_페이지"/>
    		<c:param name="변수_이름1" value="데이터1"
    		<c:param name="변수_이름2" value="데이터2"
    	</c:redirect>
    
--%>
    
    <%-- <jsp:forward page="ex42_result.jsp" /> --%>
    <%-- 한글 처리 --%>
    <%-- <%request.setCharacterEncoding("UTF-8"); %> --%>
    <%-- 
    	<jsp:forward page="ex42_result.jsp">
    		<jsp:param value="태권브이" name="name"/>
    	</jsp:forward>
    --%>
    
    <!-- jsp와 달리 한글 처리를 하지않아도 OK -->
	<c:redirect url="ex42_result.jsp">
		<c:param name="name" value="아수라백작" />
	</c:redirect>

</body>
</html>