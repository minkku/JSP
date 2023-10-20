<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${ empty loginUser }">
<jsp:forward page = "../login.do" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "../logout.do">
		<table>
			<tr>
				<td>
					안녕하세요. ${loginUser.name}(${loginUser.userId})님
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align = "center">
					<input type = "submit" value = "로그아웃"> &nsbp;&nsbp;
					<input type = "button" value = "회원정보 변경" onclick="location.href='memberUpdate.do?userId=${loginUser.userId}'">
				</td>
		</table>
	</form>
</body>
</html>