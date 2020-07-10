<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title> JSTL : JSP 표준 태그 라이브러리 - core </title>

</head>

<body>

<%--

* JSTL : JSP 표준 태그 라이브러리

1. 라이브러리를 다운받아서 해당 프로젝트에 저장
	
	>>> tomcat.apache.org
	   
2. 다운받은 라이브러리를 WEB-INF/lib 에 넣음
	
3. page 지시어 및 taglib 지시어를 통해 선언 및 사용
	
- 선언 방법
		
		<%@ taglib prefix="" uri="" %>
			 
	1) 코어(c)
	
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	
	2) 국제화(fmt)
	
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
	
4. 사용방법
	 
	<c:명령어> EL문 </c:명령어>

- 변수 생성(set)

	<c:set var="변수_이름" value="데이터" />

- 변수 출력(out)

	1) <c:out value="출력할_데이터 or ${변수이름}" />
	
	2) ${변수_이름}
  	 
- 변수 삭제(remove)

	<c:remove var="변수_이름" value="데이터" />
  	 
--%>
   
	<h2>
   
     <%-- 변수 생성 --%>
     <c:set var="test" value="Hello JSP" />
     
     <%-- 변수 데이터 출력 --%>
    <li> <c:out value="test" /> </li>    	<%-- test --%>
    <li> <c:out value="${test}" /> </li>  	<%-- Hello JSP--%> 
    <li> ${test} </li>                    	<%-- Hello JSP--%> 
    
    <%-- 변수 삭제 후 호출  --%>
    <c:remove var="test"/>
    <li> <c:out value="${test}" /> </li> 	<%-- 출력 X --%> 
    <li> ${test} </li>                    	<%-- 출력 X --%>
    
    <hr>
    
<%--
    [if문]
    
    	<c:if 변수_이름="조건식(관계연산/비교연산)" var="변수명">
            조건이_참일_때_실행할_내용;
        </c:if>
    
    - else가 없음
    - 조건이 참이 아니면 if문을 무시
--%>

    <c:if test="${5 < 4}">			<%-- 출력 X --%>
      <li>Hello JSP World </li>
    </c:if>
    
    <c:if test="${5 > 4}">			<%-- 출력 O --%>
      <li>Hello Web World </li>
    </c:if>
    
    <%-- sum의 점수가 90 이상이면 합격, 아니면 불합격 --%>
    
		<c:set var="sum" value="95" />
	    
		<c:if test="${sum < 90}">
			<li>불합격</li>
		</c:if>
		
		<c:if test="${sum >= 90}">
			<li>합격</li>
		</c:if>
    
<%-- 
	[choose문]
	 
        <c:choose>
	    	<c:when test="조건식1(EL)"> 조건1이 참일때 실행 </c:when>	(if)
	    	<c:when test="조건식2(EL)"> 조건2가 참일때 실행 </c:when>	(else if)
	    	<c:when test="조건식3(EL)"> 조건3이 참일때 실행 </c:when>	(else if)
    		<c:otherwise> 위 조건이 다 거짓일 때 실행 </c:otherwise>	(else)
    	</c:choose>
    	
    - JAVA 의 switch문과 비슷
    - <c:if> 에서 else 사용이 불가능하므로, <c:choose> 를 사용
--%>

    <%-- 평균 avg가 90이상이면 A, 80이상이면 B, 70이상이면 C, 나머지 F --%>
    
    <c:set var="avg" value="64.5" />
    
    <c:choose>
    	<c:when test="${avg >= 90.0}"> 	<li> A학점 </li> </c:when>
    	<c:when test="${avg >= 80.0}"> 	<li> B학점 </li> </c:when>
    	<c:when test="${avg >= 70.0}"> 	<li> C학점 </li> </c:when>
    	<c:otherwise>					<li> F학점 </li> </c:otherwise>
    </c:choose>
    
<%--
    
    [반복문]
    	
    	1) 일반적인 for 문 형식
    	
	    	<c:forEach begin="시작값" end="끝값" step="증가값" var="변수">
	    		반복_내용
	    	</c:forEach>
    	
    	2) 개선된 for문 형식 - 배열/리스트에 사용
    	
    		<c:forEach var="변수_이름" items="${배열/리스트}">
    			반복_내용
    		</c:forEach>
    	
--%>
    
    <!-- 0 부터 10 까지 출력하기 -->
    <c:forEach begin="0" end="10" step="1" var="k">
		${k} &nbsp;
	</c:forEach>
	
	<hr>
	
	<!-- 0 부터 10 까지 짝수만 출력하기 -->
	<c:forEach begin="0" end="10" step="1" var="k">
		<c:if test="${k%2 == 0}">
			${k} &nbsp;
		</c:if>
	</c:forEach>
    
    <hr>
    
<%-- 
    
    varStatus	=> count, index
    	
    	- 변수의 상태를 의미
    	
    	- {vs.index} : begin 값부터 시작
    	- {vs.count} : 1부터 시작
        
--%>

    <c:forEach begin="20" end="29" step="1" var="k" varStatus="vs"> 
    	${k} / ${vs.index} / ${vs.count} <br>
    </c:forEach>
    
    <hr>
    
<%-- 
    
    varStatus	=> first, last
    
    	- {vs.first}	: 현재 값이 처음 값이면 true
    	- {vs.last}		: 현재 값이 마지막 값이면 true
    	
    	- 결과는 boolean 으로 도출됨
    
--%>
    
    <c:forEach begin="20" end="29" step="1" var="k" varStatus="vs">
    	${k} / ${vs.first} / ${vs.last} <br>
    </c:forEach>
    
    <hr>

	<%-- 배열 저장 --%>
	<c:set var="arr" value="홍길동, 임꺽정, 장길산, 일지매" />
	
	<%-- 배열 또는 리스트 처리 시, 개선된 for 문 사용이 적합 --%>
	<c:forEach var="k" items="${arr}">
		${k} <br>
	</c:forEach>
	
	<hr>
	
<%-- 
	
	<c:forTokens>
	
		- 반복하면서 문자 나누기
		- 구분자에는 여러개를 사용할 수 있음 (OR 개념)
	
		<c:forTokens var="변수" items="{배열/리스트}" delims="구분자">
			실행_내용
		</c:forTokens>
	
--%>

	<c:set var="arr2" value="홍길동, 임꺽정, 장길산/일지매, 둘리/고길동, 마이콜" />
	
	<c:forTokens var="k" items="${arr2}" delims=",">
		${k} <br> 
	</c:forTokens>
    
    <hr>
    
	<c:forTokens var="k" items="${arr2}" delims="/">
		${k} <br> 
	</c:forTokens>
    
    <hr>
    
    <%-- 구분자는 여러개를 사용할 수 있음 (or 개념) --%>
	<c:forTokens var="k" items="${arr2}" delims=",/">
		${k} <br> 
	</c:forTokens>
    
	<hr>
	</h2>
   
</body>
</html>











