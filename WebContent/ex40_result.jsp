<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>      
<%--
	request.setCharacterEncoding("UTF-8");
	나중에는 MVC 패턴에서 사용됨
    String name = request.getParameter("name");
    ...
--%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>EL를 이용한 파라미터 결과 보기</title>

</head>

<body>
	<h1> EL를 이용한 파라미터 결과 보기 </h1>
	<h3>
	
		<%-- ${param.이름} / 배열: ${paramValues.이름[index] --%>
		
		<li>이름 : ${param.name} </li>
		<li>나이 : ${param.age} </li>
		<li>주소 : ${param.addr} </li>
		<li>성별 : ${param.gender} </li>
		<li>취미 : ${paramValues.hobby[0]} &nbsp; 
		           ${paramValues.hobby[1]} &nbsp;
		           ${paramValues.hobby[2]} &nbsp;
		           ${paramValues.hobby[3]} &nbsp;
		</li>
	</h3>
</body>
</html>