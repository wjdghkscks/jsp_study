<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>JSP internal object : response</title>
</head>

<body>

<!-- 

* response

- request 는 요청 정보를 담고 있음
  response 는 응답 정보를 웹 브라우저에 담는 역할을 수행
  
  1. 헤더 정보 입력
	
  
  2. 쿠키 정보 전송
	
  
  3. 웹페이지 이동 (redirect)
	
	1) redirect		
		
		>>> response.sendRedirect("이동할_페이지_주소");
	
	- 새로운 request 및 response 값을 가지고 페이지로 이동
	- 따라서 기존 파라미터 값의 사용이 불가능함
	
	2) forward		
		
		>>> request.getRequestDispatcher("이동할_페이지_주소").forward(request, response);
	
	- 기존의 request 및 response 값을 가지고 페이지로 이동
	- 따라서 기존 파라미터 값의 사용이 가능함
	
	3) <a> tag
		
		>>> <a href="이동할_페이지_주소">입력_텍스트</a>
		
	- 파라미터 값을 가져갈 것인지를 선택할 수 있음
	
	4) JavaScript를 통한 페이지 이동
		
		>>> location.href = "이동할_페이지_주소"
		
	- 파라미터 값을 가져갈 것인지를 선택할 수 있음
	
		>>> history.go(숫자)
		
	- redirect 와 forward 는 중간 페이지가 보이지 않고 바로 최종 페이지가 보임
	- <a> tag 와 JavaScript 사용 방법은 중간 페이지에서 이벤트 처리 이후 최종 페이지로 이동
	
 -->
 
	<form action="ex08_result.jsp" method="post">
		<p>ID: <input type="text" name="id"> </p>
		<p>PW: <input type="password" name="pw"> </p>
		<p><input type="submit" value="로그인"></p>
	</form>
 
</body>

</html>