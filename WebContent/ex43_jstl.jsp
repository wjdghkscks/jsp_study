<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP 표준 태그 라이브러리 - 국제화(fmt)</title>
</head>
<body>

	<%-- 숫자와 날짜 포맷팅 --%>
	
	<h3> 천단위 숫자 처리와 숫자만 받기 </h3>
	
		<%-- formatNumber	>> 천단위마다 콤마(,) 생성 --%>
		<li> <fmt:formatNumber value="1234.567" /> </li>
		
		<br>
	
		<%-- parseNumber	>> 문자가 섞여 있어도 문자 이전 숫자까지 숫자 처리 --%>
		<li> <fmt:parseNumber value="1234.567" /> </li>
		<li> <fmt:parseNumber value="1234.567aaa1" /> </li>
		
		<br>
		
	<hr>
		
	<h3> 반올림하기 </h3>
	<%-- pattern="#,###" --%>
	
		<li> <fmt:formatNumber value="1234.467" pattern="#,###" /> </li>
		<li> <fmt:formatNumber value="1234.567" pattern="#,###" /> </li>
		
		<%-- 소수점 n번째 자리까지 구하기	>> pattern="#,###.##" --%>
		<li> <fmt:formatNumber value="1234.447" pattern="#,###.#" /> </li>
		<li> <fmt:formatNumber value="1234.557" pattern="#,###.#" /> </li>
			
		<br>
			
		<%-- 빈 자리 0으로 채우기 --%>
		<li> <fmt:formatNumber value="1234" pattern="#,###.###" /> </li>
		<li> <fmt:formatNumber value="1234" pattern="#,###.000" /> </li>
			
		<br>
			
		<%-- 반올림 처리 - 일의자리 반올림 --%>
		<li> <fmt:formatNumber value="1234.467" pattern="#,##0" /> </li>
		<li> <fmt:formatNumber value="1234.567" pattern="#,##0" /> </li>
		
		<br>
		
	<hr>
			
	<h3> 현재 시스템에 맞는 화폐 단위 사용 </h3>
	
		<li> <fmt:formatNumber value="1234" type="currency" /> </li>
		<li> <fmt:formatNumber value="1234.412" type="currency" /> </li>

		<br>

		<%-- 화폐 단위를 미국으로 변경 --%>
		<fmt:setLocale value="en_us"/>
		
		<li> <fmt:formatNumber value="1234" type="currency" /> </li>
		<li> <fmt:formatNumber value="1234.412" type="currency" /> </li>
		
		<br>
		
	<hr>
		
	<h3> 퍼센트 </h3>
	
		<li> <fmt:formatNumber value="12" type="percent" /> </li>
		<li> <fmt:formatNumber value="0.12" type="percent" /> </li>
		
		<br>
		
	<hr>
	
	<%-- 오늘 날짜 구하기 --%>		
	<jsp:useBean id="now" class="java.util.Date" />
	
	<h3> <fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/> </h3>
	
	<h3>오늘 날짜는 ${now} 입니다.</h3>
	
	<hr>
	
	<%-- 날짜 표현 방법 --%>
	<li> <fmt:formatDate value="${now}" /> </li>								<%-- Jul 10, 2020 --%>
	
	<li> <fmt:formatDate value="${now}" dateStyle="short"/> </li>				<%-- 7/10/2020 --%>
	<li> <fmt:formatDate value="${now}" dateStyle="medium"/> </li>				<%-- Jul 10, 2020 (default) --%>
	<li> <fmt:formatDate value="${now}" dateStyle="long"/> </li>				<%-- July 10, 2020 --%>
	<li> <fmt:formatDate value="${now}" dateStyle="full"/> </li>				<%-- Friday, July 10, 2020 --%>
		
	<hr>
		
	<li> <fmt:formatDate value="${now}" type="time" /> </li>					<%-- 11:11:11 AM --%>
	
	<li> <fmt:formatDate value="${now}" type="time" timeStyle="short"/> </li>	<%-- 11:11 AM --%>
	<li> <fmt:formatDate value="${now}" type="time" timeStyle="medium"/> </li>	<%-- 11:11:11 AM --%>
	<li> <fmt:formatDate value="${now}" type="time" timeStyle="long"/> </li>	<%-- 11:11:11 AM KST --%>
	<li> <fmt:formatDate value="${now}" type="time" timeStyle="full"/> </li>	<%-- 11:11:11 AM KST --%>
	
	<hr>
		
	<li> <fmt:formatDate value="${now}" pattern="yyyy.MM.dd" /> </li>			<%-- 2020.11.11 --%>	
	<li> <fmt:formatDate value="${now}" pattern="yy.MM.dd" /> </li>				<%-- 20.11.11 --%>	
	<li> <fmt:formatDate value="${now}" pattern="HH:mm:ss" /> </li>				<%-- 11:11:11 --%>	
	<li> <fmt:formatDate value="${now}" pattern="hh:mm:ss" /> </li>				<%-- 11:11:11 --%>	
	<li> <fmt:formatDate value="${now}" pattern="yyyy.MM.dd HH:mm:ss" /> </li>	<%-- 2020.11.11 11:11:11 --%>	
	
		

</body>
</html>