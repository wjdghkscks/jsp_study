<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>HTML 주석과 JSP 주석 및 내용</title>

</head>

<body>

<!-- HTML 주석 	: 웹브라우저 내 '페이지 소스 보기'에서 내용이 보임 			-->
<%-- JSP 주석	: 웹브라우저 내 '페이지 소스 보기'에서 내용이 보이지 않음 	--%>

<%-- 
* JSP (Java Server Page)
- HTML 안에서 Java 코드를 작성할 때 사용
- JSP의 구성요소
	디렉티브		>>> <%@		%>
	선언부			>>> <%!		%>
	스크립트릿		>>> <%		%>
	표현식			>>>	<%=		=%>

1. 디렉티브 (Directive, 지시어)		>> <%@	%>
- JSP 페이지에 대한 정보를 표시
	
	1) page 지시어	: 보통 해당 문서의 맨 앞에 사용
					  JSP 페이지에 대한 정보를 입력하기 위해서 사용
					  Tomcat 이 해당 page 지시어에 따라 페이지를 해석함
					  보통 eclipse 에서는 자동으로 생성됨
					  
	2) page 지시어 속성들		
	  
	- language			: 스크립트 코드에 사용되는 언어
	- contentType		: 문서타입 및 문자셋(캐릭터 인코딩)을 지정
		encoding = 부호화, 암호화 / 정보의 형태를 변환하여 처리
		decoding = 복호화 / 변환된 정보를 원래 형태로 되돌리는 것
	- pageEncoding		: 해당 문서를 원하는 형태(UTF-8)로 변환해서 처리함
	
	- session			: 세션 사용 여부 (default: true)
						  '서버측에서 사용자 정보를 저장하고 관리하는 공간'을 의미
						  세션의 생명 주기는 웹브라우저가 종료될 때까지
						  주로 로그인 처리 시 사용 (예외적으로 은행 로그인은 정해진 시간이 되면 자동 로그아웃)
	- buffer			: 출력 버퍼의 크기 지정 (default: 8kb)
	- autoFlush			: 버퍼의 내용을 자동으로 출력시켜줌 (default: true)
	- errorPage			: 오류 발생 시 연결할 페이지를 지정
	- isErrorPage		: 해당 페이지가 오류 페이지이면 true (default: false)
	
	3) taglib 지시어	: 태그 라이브러리 지시어
						  해당 페이지에서 사용할 태그 라이브러리를 지정
	
	4) include 지시어	: 특정 영역에 다른 문서를 포함시킬 때 사용
						  지정한 문서의 소스를 복사하여, 현재 문서에 붙여넣는 것과 같음
						  HTML 의 <iframe> 과 같은 역할
						  
 --%>

</body>

</html>