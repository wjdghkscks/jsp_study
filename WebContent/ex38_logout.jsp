<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그아웃
	session.invalidate();

	// 장바구니 화면으로 이동
	response.sendRedirect("ex37_list.jsp");
%>