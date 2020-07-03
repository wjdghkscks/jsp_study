<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// request 에 따른 한글 처리
	request.setCharacterEncoding("UTF-8");
	
	// 파라미터값 받기
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String residence = request.getParameter("residence");
	String[] animal = request.getParameterValues("animal");
	String cPage = request.getParameter("cPage");
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>파라미터값을 받아서 표시하기</title>
</head>

<body>

	<h2>파라미터값 표시하기</h2>
	<h3>
		<ul>
			<li>이름: <%=name%></li>
			<li>나이: <%=age%></li>
			<li>주소: <%=addr%></li>
			<li>성별: <%=gender%></li>
			<li>취미: <%for(String k : hobby) {%>
							<%=k%>, &nbsp;
						<%}%></li>
			<li>거주지: <%=residence%></li>
			<li>반려동물: <%for(String k : animal) {
							out.println(k + ",&nbsp;");
							}%>
			</li>
			<li>cPage: <%=cPage%></li>
		</ul>
	</h3>
	
	<hr>
	
	<h2>getParameterNames(): 파라미터 이름 구하기</h2>
	<h3>
		<%
			Enumeration p_enum = request.getParameterNames();
			while(p_enum.hasMoreElements()) {
				String p_name = (String)p_enum.nextElement();
				out.println("<li>" + p_name + "&nbsp;");
			}
		%>
	</h3>
	
	<hr>
	
	<h2>getParameterMap(): 파라미터 구하기</h2>
	<h3>
		<%
			Map map = request.getParameterMap();
			String[] m_name = (String[])map.get("name");
			String[] m_age = (String[])map.get("age");
			String[] m_hobby = (String[])map.get("hobby");
			
			out.println(m_name[0]+"<br>");
			out.println(m_age[0]+"<br>");
			for(String k : m_hobby) {
				out.println(k + ",&nbsp;");
			}
		%>
	</h3>
	

</body>

</html>