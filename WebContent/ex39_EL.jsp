<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Express Language : 표현 언어</title>
<style type="text/css">
	* {
		margin: 10px;
	}
	h2 {
		text-align: center;
		padding: 10px;
	}
	p {
		padding: 20px 0;
	}
</style>

	<script type="text/javascript">
		function send_go(f) {
			
		/*
			var chk1 = f.name.value;
			if(chk1 == ""){
				alert("이름 정보를 입력하세요");
				f.name.focus();
				return;
			}
			var chk2 = f.age.value;
			if(chk2 == ""){
				alert("나이 정보를 입력하세요");
				f.age.focus();
				return;
			}
			var chk3 = f.addr.value;
			if(chk3 == ""){
				alert("주소 정보를 입력하세요");
				f.addr.focus();
				return;
			}
		*/
			
			// 필수 항목 체크 alert 역할을 하는 function 생성
			for (var i = 1; i < f.elements.length; i++) {
				
				/*
					- elements[i] 는 1부터 시작
					- elements[1] : name / elements[2] : age / elements[3] : addr
				*/
				if(f.elements[i].value == "") {
					
					// age 를 제외시킴
					// radio 와 checkbox 는 value 값을 이미 가지고 있으므로, 체크하지 않아도 전송됨
					if(i == 2) continue;
					
					// alert
					alert(f.elements[i].name + "를 입력하세요");
					
					// 확인 버튼 누른 후 입력창에 커서 이동
					f.elements[i].focus();
					
					return;
				}
				
			}
			f.action = "ex40_result.jsp";
			f.submit();
		}
	</script>

</head>
<body>

<%-- 

* EL (Express Language)

- JSP 에서 사용 가능한 새로운 스크립트 언어
- 표현식( <%= 변수/메소드 %> ) 의 사용을 대체	==>	${변수/메소드/계산식}
- 파라미터 값을 받을 때도 사용
- JSP의 4대 저장소들(pageContext, request, session, application)에 저장된 정보들을 바로 호출 가능

--%>

	<h2> 표현식 산술 연산 사용 예제 </h2>
		<p>
			<li> 15 + 7 = <%= 15 + 7 %> </li>
			<li> 15 - 7 = <%= 15 - 7 %> </li>
			<li> 15 * 7 = <%= 15 * 7 %> </li>
			<li> 15 / 7 = <%= 15 / 7 %> </li>
		</p>
	
	<hr>

	<h2> EL 산술 연산 사용 예제 </h2>
		<p>
			<li> 15 + 7 = ${15 + 7} </li>
			<li> 15 - 7 = ${15 - 7} </li>
			<li> 15 * 7 = ${15 * 7} </li>
			<li> 15 / 7 = ${15 / 7} </li>
		</p>
		
	<hr>
	
	<h2> 표현식 변수 사용 예제 </h2>
		<p>
			<% int su1 = 125 + 25; %>
			<li>su1 = <%=su1%></li>
		</p>
	
	<hr>
	
	<h2> EL 변수 사용 예제 </h2>
	<%-- EL은 JSP에서 바로 만든 변수의 값은 호출할 수 없음 --%>
	<%-- 따라서 4대 저장소에 저장 후 호출해야 함 --%>
	<%-- 4대 저장소 : pageContext, request, session, application --%>
	<%-- 우선순위: pageContext > request > session > application --%>
		<p>
			<% 
			int su2 = 125 + 25;
			pageContext.setAttribute("su2", su2);
			%>
			<li>su2 = ${su2}</li>
		</p>
	
	<hr>
	<%-- 우선순위: pageContext > request > session > application --%>
		<% pageContext.setAttribute("pc", "i3"); %>
		<% request.setAttribute("pc", "i5"); %>
		<% session.setAttribute("pc", "i7"); %>
		<% application.setAttribute("pc", "i9"); %>
		
		<p>
			<li> 호출하기 (우선순위 존재) </li>
			<li> ${pc} </li>
			<%-- 원하는 범위 지정 가능 --%>
			<li> ${pageScope.pc} </li>
			<li> ${requestScope.pc} </li>
			<li> ${sessionScope.pc} </li>
			<li> ${applicationScope.pc} </li>
		</p>
	
	<%-- 파라미터 사용 방법 --%>
	
	<h2> form 을 이용한 파라미터 전송 </h2>
	
	<form method="post" action="ex40_result.jsp">
		<fieldset>
			<legend> submit 을 이용한 데이터 전송 </legend>
			
		<%-- required : 필수 체크 사항 --%>
			<p>* 이름 : <input type="text" name="name" required></p>
 			<p>  나이 : <input type="number" name="age" ></p>
 			<p>* 주소 : <input type="text" name="addr" required></p>
 			<p>  성별 : <input type="radio" name="gender" value="남성">남성
 			            <input type="radio" name="gender" value="여성">여성
 			</p> 
 			<p>  취미 : <input type="checkbox" name="hobby" value="운동">운동
 			            <input type="checkbox" name="hobby" value="영화">영화
 			            <input type="checkbox" name="hobby" value="게임">게임
 			            <input type="checkbox" name="hobby" value="독서">독서
 			</p>
 			<input type="submit" value="회원가입" >
 			
		</fieldset>
	</form>
	
	<hr>
	
 	<form method="post" >
 		<fieldset>
 			<legend> JavaScript 데이터 전송 </legend>
 			
 		<%-- JavaScript는 required가 적용 되지 않음  --%>
 			
 			<p>* 이름 : <input type="text" name="name"></p>
 			<p>  나이 : <input type="number" name="age"></p>
 			<p>* 주소 : <input type="text" name="addr"></p>
 			<p>  성별 : <input type="radio" name="gender" value="남성">남성
 			            <input type="radio" name="gender" value="여성">여성
 			</p> 
 			<p>  취미 : <input type="checkbox" name="hobby" value="운동">운동
 			            <input type="checkbox" name="hobby" value="영화">영화
 			            <input type="checkbox" name="hobby" value="게임">게임
 			            <input type="checkbox" name="hobby" value="독서">독서
 			</p>
 			<input type="button" value="회원가입" onclick="send_go(this.form)" >
 		</fieldset>
 	</form>
</body>
</html>