<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
label{
    display: inline-block;
    float: left;
    clear: left;
    width: 100px;
    text-align: left; /*Change to right here if you want it close to the inputs*/
}
input {
  display: inline-block;
  float: left;
}
</style>
<title>서블릿</title>
</head>
<body>
	<form method = "get" action = "Login">
		<label for = "userId">아이디 : </label>
		<input type = "text" name = "id" id = "userId"><br>
		
		<label for = "pw">비밀번호 : </label>
		<input type = "password" name = "password" id = "pw"><br>
		<input type = "submit" value = "로그인">
	</form>
</body>
</html>