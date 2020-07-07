<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 한글 처리 --%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>액션 태그 : useBean</title>

</head>

<body>

	<%-- Java 에서 VO 객체를 생성하는 것과 같은 의미 --%>
	<jsp:useBean id="vo" class="com.ict.edu.VO" scope="page" />
	
	<%-- 파라미터 값들과 VO 의 이름이 같으면 setter를 호출하여 파라미터 값을 저장함 --%>
	<%-- useBean id = setProperty name --%>
	<jsp:setProperty property="*" name="vo"/>
	
	<h2>파라미터값 표시하기</h2>
	<h3>
		<ul>
			<li>이름: <jsp:getProperty property="name" name="vo" /></li>
			<li>나이: <%=vo.getAge()%></li>
			<li>주소: <%=vo.getAddr()%></li>
			<li>성별: <%=vo.getGender()%></li>
			<li>취미: <%for(String k : vo.getHobby()) {%>
							<%=k%>, &nbsp;
						<%}%></li>
			<li>거주지: <%=vo.getResidence()%></li>
			<li>반려동물: <%for(String k : vo.getAnimal()) {
							out.println(k + ",&nbsp;");
							}%>
			</li>
			<li>cPage: <%=vo.getcPage()%></li>
		</ul>
	</h3>

</body>

</html>