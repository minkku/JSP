<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
	Redirect 와 Forward의 차이
	
	redirect의 경우 최초 요청을 받은 URL1 에서 클라이언트에 redirect 할 url2를 리턴하고,
	클라이언트에게 전혀 새로운 요청을 생성하여 url2에 다시 요청을 보낸다. 따라서 최초의 요청정보는 더이상
	유효하지 않게 된다.

	forward 방식은 다음 이동한 url로 요청정보를 그대로 전달한다. 말 그대로 forward(건네주기)하는 것이다.
	그렇기 떄문에 사용자가 최초로 요정정보는 다음 url에서도 유효
	
	시스템 (session, DB)에 변화가 생기는 요청 (로그인, 회원가입, 글쓰기)의 경우 'redirect' 방식으로 응답하는것이 바람직
	시스템에 변화가 생기지 않는 단순조회 (리스트보기, 검색)의 경우 'forward' 방식으로 응답하는 것이 바람직.
	
	*출처 : https://doublesprogramming.tistory.com/63
	
	JSP 태그
	
	<%--
	 
	<%@ %>
		- 지시자(Directive) 
		- 컨테이너가 JSP 파일을 서블릿으로 변환시킬떄 필요한 정보 기술, 자바 클래스를 import 시켜서 사용하거나 페이지를 삽입할떄 사용함
		- 자바 클래스를 import 할 경우
		- <@ page import = java.util.*. %> 이런식으로 사용 가능
		- <@ include file = "example.jsp" %> jsp 소스코드를 그대로 가져와 사용할떈 이런식으로 사용 가능
		
	<%! %>
		- 선언(Declaration)
		- 변수와 메소드를 선언한다.
		- 범위 : 페이지 내 어디서나 접근할 수 있는 전역 변수 및 메소드
		- 변수는 클래스필드와 같은 역활
		- <% %> 변수 선언 하는건 같지만 메소드를 작성할 수 있는점에서 차이가 있음
		
	<%= %>
		- 표현식(Expression)
		 
	--%>
 -->