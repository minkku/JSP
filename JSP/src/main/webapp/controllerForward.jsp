<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age <= 19) {
		%>
		<script>
			alert("19세 미만은 입장 불가")
			history.go(-1)
		</script>
		<%
	} else {
		request.setAttribute("name", "이민규");
		RequestDispatcher dispatcher = request.getRequestDispatcher("forwardResult.jsp");
		dispatcher.forward(request, response);
	}
%>