<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	입장하려면 나이를 입력하세요 <br>
	<form method = "post" action = "controllerForward.jsp">
		<label for = "age">
			<input type = "text" name = "age" id = "age">
			<input type = "submit" value = "입장">
		</label>
	</form>
</body>
</html>