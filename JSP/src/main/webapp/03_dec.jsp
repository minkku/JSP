<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	    
	<%-- 변수와 메소드를 선언할땐 --%>
	<%!
    	String str = "안녕하세요";
    	int a = 5, b = -5;
    	
    	public int abs(int n) {
    		if(n < 0){
    			n = -n;
    		}
    		return n;
    	}
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>선언문에 변수 선언과 메소드 정의하기</title>
</head>
<body>
	<!--  -->
	<%
		out.print(str+"<br>");
		out.print(a + "의 절대값 : " + abs(a) + "<br>");
		out.print(b + "의 절대값 : " + abs(b) + "<br>");
	%>
</body>
</html>