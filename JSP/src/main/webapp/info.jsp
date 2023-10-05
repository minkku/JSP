<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
</head>
<body>
	<form method = "get" action = "Info">
		<label for = "gender">gender : </label>
		<input type = "radio" name = "gender" id = "gender" value = "male" checked> male
		<input type = "radio" name = "gender" id = "gender" value = "female"> female <br><br>

		<label for = "email">commercial for email : </label>
		<input type = "radio" name = "email" id = "email" value = "agree" checked> agree
		<input type = "radio" name = "email" id = "email" value = "disagree"> disagree <br><br>

		<label for = "content">please write simple greeting!</label><br>
		<textarea id = "content" name = "content" rows = "3" cols = "35"></textarea><br>
		
		<input type = "submit" value = "send">
	</form>
</body>
</html>