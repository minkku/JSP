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
 -->