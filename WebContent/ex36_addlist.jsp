<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String fruits = request.getParameter("fruits");
	
	// 장바구니의 크기를 알 수 없으므로, (배열이 아닌) 컬렉션에 파라미터 값 저장
	ArrayList<String> list = 
			(ArrayList<String>)(session.getAttribute("list"));
	
	if(list == null) {
		// 맨 처음에 해당 페이지로 넘어올 때는 session 에 list 가 없음
		list = new ArrayList<String>();
		session.setAttribute("list", list);
	}
	
	// list 에 정보를 추가
	list.add(fruits);
	
%>

<script>
	alert("<%=fruits%> 상품이 추가되었습니다.");
	history.go(-1);
</script>