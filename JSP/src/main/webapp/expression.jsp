<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식의 사용예</title>
</head>
<body>
<!-- 간단한 인삿말 출력하기 -->

<% String name = "Angel"; %>
<!-- ㄴ 선언후 밑에서 %= 태그로 변수를 가져와서 출력 -->
Hello <%= name %>
</body>
</html>