<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	b {
		font-size : 16pt;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		out.println("이름 <b> " + name + "</b><br>");
		
		String gender = request.getParameter("gender");
		out.println("성별 : ");
			if(gender.equals("male")) {
				out.println("<b>남자</b><br>");
			} else {
				out.println("<b>여자</b><br>");
			}
		
		String seasonArr[] = request.getParameterValues("season");
		for (String season : seasonArr) {
			int n = Integer.parseInt(season);
			switch (n) {
			case 1 :
				out.println("<b> 봄 </b>");
				break;
			
			case 2 :
				out.println("<b> 여름 </b>");
				break;
			
			case 3 :
				out.println("<b> 가을 </b>");
				break;
			
			case 4 :
				out.println("<b> 겨울 </b>");
				break;
		}
	}
	%>
	
	<br>
	<b><a href = "javascript:history.go(-1)">다시</a></b>
</body>
</html>