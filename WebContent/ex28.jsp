<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>로그인 검사</title>

<script type="text/javascript">
	function send_back(f) {
		f.action = 'ex26_cookie.jsp';
		f.submit();
	}
</script>

</head>

<body>
<% 
	/* 쿠키 객체 생성 */
	Cookie[] cookies = request.getCookies();
	int cnt = 0;
	
	if((cookies != null) && (cookies.length > 0)) {
		
		for(Cookie k : cookies) {
			if(k.getValue().equals("jsp")){
				cnt += 1;	
			}
		}
		
		if(cnt>=1) {
			out.println("<h2>로그인 상태</h2>");
			out.println("<a href='ex29.jsp'>로그아웃</a>");
		} else {
			out.println("<h2>로그인하지 않은 상태</h2>");
			%> 
			<br>
			<!-- 로그인 창으로 돌아가기 -->
			<form method="post">
				<input type="button" value="돌아가기" onclick="send_back(this.form)">
			</form>
			<%
		}
		
	} else {%>
		<script type="text/javascript">
			alert("로그인을 해야 사용이 가능합니다.");
			/* 로그인 창으로 돌려보냄 */
			location.href="ex26_cookie.jsp";
		</script>
	<%}%>
	
</body>

</html>