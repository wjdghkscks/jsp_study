<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>JSP internal object - out</title>
</head>

<body>

<%--

* out

- 브라우저에 출력하는 역할
- 태그를 이용하여 줄 변경, 띄어쓰기 등이 가능

--%>

	<%
		out.println("<h1>Hello World</h1>");
		out.println("welcome<br>");
		out.println(":)<br><br>");
		for(int i=0; i < 11; i++) {
			out.println(i+"&nbsp;&nbsp;");
		}
	%>

</body>

</html>