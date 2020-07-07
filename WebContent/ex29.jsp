<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>로그아웃</title>

</head>

<body>

<%
	// 로그아웃 : 쿠키 정보를 삭제하는 것
	
	Cookie[] cookies = request.getCookies();

	if((cookies != null) && (cookies.length > 0)) {
		
		for(Cookie k : cookies) {
			
			if(k.getName().equals("ict")) {
				
				// 별도의 삭제 메소드가 없으므로, 다른 이름으로 덮어씀
				Cookie cookie = new Cookie("ict", "");
				// 유효시간을 0으로 만듦
				cookie.setMaxAge(0);
				
				response.addCookie(cookie);
				response.sendRedirect("ex28.jsp");
				
			}
			
		}
		
	}
	
%>

</body>
</html>