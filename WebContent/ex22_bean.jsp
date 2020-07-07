<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>jsp useBean : 자바 빈</title>

<%-- form 태그를 JavaScript 로 전송하기 --%>
<script type="text/javascript">
	function send_go(f) {
		f.action="ex23_result.jsp";
		f.submit();
	}
</script>

</head>

<body>

<%-- 

* 자바 빈 useBean

- JSP에서 파라미터 값을 저장할 목적으로 제공하는 저장 공간
- 빈 객체: 자바 빈에 저장되어있는 객체를 의미
- MVC 패턴에서는 사용하지 않음

- 사용 순서

	1) VO 생성		>> 변수들의 이름은 파라미터의 이름과 같아야 함
	
	2) 파라미터를 받는 페이지에서 빈 객체를 생성
	
		<jsp:useBean id="호출_이름" class="VO_객체_위치" scope="범위" />
		
		>> scope: page(default) < request < session < application
		
	3) <jsp:setProperty> 를 사용하면, VO 객체에 파라미터 값들이 자동으로 저장됨
	
	4) <jsp:getProperty> 를 사용하면, 파라미터 값들을 가져올 수 있음

--%>

	<h2>form을 이용한 파라미터 전송하기</h2>
 	
 	<form method="post">
 		<fieldset>
 			<legend>데이터 전송</legend>		
 				<p>이름: <input type="text" name="name"> </p>
 				<p>나이: <input type="number" name="age"> </p>
 				<p>주소: <input type="text" name="addr"> </p>
 				<p>성별: 
 					<input type="radio" name="gender" value="남">남 
 					<input type="radio" name="gender" value="여">여 
 				</p>
 				<p>취미: 
 					<input type="checkbox" name="hobby" value="운동">운동
 					<input type="checkbox" name="hobby" value="독서">독서
 					<input type="checkbox" name="hobby" value="영화">영화
 					<input type="checkbox" name="hobby" value="게임">게임
 				</p>
 				<p>거주지:
 					<select name="residence">
 						<option>:::선택하세요:::</option>
 						<option>서울</option>
 						<option>경기</option>
 						<option>강원</option>
 						<option>충청</option>
 						<option>전라</option>
 						<option>경상</option>
 						<option>제주</option>
 					</select>
 				</p>
 				<p>반려동물:
 					<select name="animal" multiple size="4">
 						<option>강아지</option>
 						<option>고양이</option>
 						<option>토끼</option>
 						<option>앵무새</option>
 					</select>
 				</p>
 				<input type="hidden" name="cPage" value="1">
 				<!-- JavaScript 의 function 사용 -->
 				<input type="button" value="전송하기" onclick="send_go(this.form)">
 			</fieldset>
 		</form>

</body>
</html>