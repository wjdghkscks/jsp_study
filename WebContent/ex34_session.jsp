<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// id 와 pw 가 같은 경우 로그인 성공
	if(id.equals(pw)) {
		session.setAttribute("log", "ok");
		session.setAttribute("id", id);
	} else {
		session.setAttribute("log", "no");
	}
	
	/* 
		redirect로 전송하더라도 session 이기때문에, 
		request 정보는 사라지지만 if문에서 저장한 값들은 같이 전송됨
	*/
 	response.sendRedirect("ex35_session.jsp");
	
%>
<meta charset="UTF-8">
<title>로그인 성공 및 장바구니 예제</title>
