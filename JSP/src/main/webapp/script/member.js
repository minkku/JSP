
 const loginCheck = () => {
	 if(document.frm.userId.value.length == 0) {
		 alert("아이디를 입력해주세요");
		 frm.userId.focus();
		 return false;
	 }
	 
	 if(document.frm.pw.value == ""){
		 alert("암호는 반드시 입력해야합니다.");
		 frm.pw.focus();
		 return false;
	 }
	 
	 return true;
 }