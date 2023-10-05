<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	label {
	   width:160px;
	   display: inline-block;
	   float: left;
	}
	#button{
	   text-align: center;
	}
</style>

<script defer>
	const name = document.getElementsByName("name");
	const idNum = document.getElementsByName("idf");
	const id = document.getElementsByName("id");
	const pw = document.getElementsByName("pw");
	const ckpw = document.getElementsByName("pwc");
	const email = document.getElementsByName("email");
	const domain = document.getElementsByName("domain");
	const zip = document.getElementsByName("zip");
	const addres = document.getElementsByName("addres");
	const mobile = document.getElementsByName("mobile");
	const job = document.getElementsByName("job");
	const susin = document.getElementsByName("agrement");
	const like = document.getElementsByName("item");
	
    function domain() {
        var select = document.getElementById("domain");
        var option = select.options[select.selectedIndex].value;
        domain.value = option;
     }
</script>


<title>Insert title here</title>
</head>
<body>
	<form method = "get" action = "Ch2_quiz">
		<!-- 이름 -->
		<label for = "name">이름</label>
		<input type = "text" name = "name" id = "name"><br>
		
		<!-- 주민번호 -->
		<label for = "idNum">주민등록번호</label>
		<input type = "text" name = "idf" id = "idf"> -
		<input type = "text" name = "idf" id = "idb"><br>
		
		<!-- 아이디 -->
		<label for = "id">아이디</label>
		<input type = "text" name = "id" id = "id"><br>
		
		<!-- 패스워드 -->
		<label for = "pw">패스워드</label>
		<input type = "password" name = "pw" id = "pw"><br>
		<!-- 패스워드 체크 -->
		<label for = "ckpw">패스워드 확인</label>
		<input type = "password" name = "pw" id = "pwc"><br>
		
		<!-- 이메일 -->
		<label for = "email">이메일</label>
		<input type = "email" name = "email" id = "email"> @ 
		<input type = "email" name = "emailDomain" id = "domain" placeholder = "xxxxx.com">
		<select id = "e" name = "email" size = "1">
			<option value = "직접입력">직접입력</option>
			<option value = "daum.net">daum.net</option>
			<option value = "naver.com">naver.com</option>
			<option value = "gmail.com">gmail.com</option>
			<option value = "hotmail.com">hotmail.com</option>
		</select><br>
		
		<!-- 우편번호 -->
		<label for = "zip">우편번호</label>
		<input type = "text" id = "zip"><br>
		
		<!-- 주소 -->
		<label for = "addres">주소</label>		
		<input type = "text" id = "addres">
		<input type = "text" placeholder = "상세주소를 입력하세요"><br>
				
		<!-- 핸드폰번호 -->
		<label for = "mobile">핸드폰 번호</label>
		<input type = "text" id = "mobile"><br>

		<!-- 직업 -->
		<label for = "job">직업</label>
		<select id = "job" name = "job" size ="5">
			<option value = "무직">무직</option>
			<option value = "학생">학생</option>
			<option value = "주부">주부</option>
			<option value = "회사원">회사원</option>
			<option value = "선생님">선생님</option>
		</select>
		<br>
		
		<!-- 메일 수신 -->
		<label for = "susin">메일 정보 수신</label>
		<input type = "radio" name ="agrement" value = "동의" checked>동의
		<input type = "radio" name ="agrement" value = "비동의">비동의<br>
		
		<!-- 관심분야 -->
		<label for = "like" name = "like" size = '5' multiple = "multiple">관심분야</label>
		<input type = "checkbox" name = "item" value ="생두">생두
		<input type = "checkbox" name = "item" value ="원두">원두
		<input type = "checkbox" name = "item" value ="로스팅">로스팅
		<input type = "checkbox" name = "item" value ="핸드드립">핸드드립
		<input type = "checkbox" name = "item" value ="에스프레소">에스프레소
		<input type = "checkbox" name = "item" value ="창업">창업
		<br>
		
		<!-- 전송버튼 -->
		<input type = "submit" value = "회원가입">
		<input type = "submit" value = "취소">
	</form>
</body>
</html>