<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	label {
		margin-right : 20px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<form action = "fruitSelect.jsp">
		<label for = "fruit">Choose fruits</label>
		<select id = "fruit" name = "fruit">
			<option value = "1">사과</option>
			<option value = "2">메론</option>
			<option value = "3">바나나</option>
		</select>
		<br>
		<input type = "submit" value = "send">
	</form>
</body>
</html>