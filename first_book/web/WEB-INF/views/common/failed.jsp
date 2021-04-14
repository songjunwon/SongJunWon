<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	
	(function(){
		
		const failedCode = "${requestScope.failedCode}";
		
		var failedMessage = "";
		
		var movePath = "";
		
		switch(failedCode){
		
		case "insertMember" : 
			failedMessage = "회원 가입에 실패하셨습니다!";
			movePath = "${ pageContext.servletContext.contextPath}/member/regist";
			break;
			
		case "loginMember" : 
			failedMessage = "아이디 혹은 비밀번호가 다릅니다.";
			movePath = "${ pageContext.servletContext.contextPath}/member/login";
			break;


		case "noLogin" : 
			failedMessage = "로그인 후 이용 가능합니다.";
			movePath = "${ pageContext.servletContext.contextPath}/member/login";
			break;

		case "selectAllWebNovel" : 
			failedMessage = "조회된 웹소설이 없습니다.";
			movePath = "${ pageContext.servletContext.contextPath}";
			break;
		
		case "adminSelectAllWebNovel" : 
			failedMessage = "관리자 페이지에서 조회된 웹소설이 없습니다.";
			movePath = "${ pageContext.servletContext.contextPath}";
			break;
		case "adminInsertNewWebNovel" : 
			failedMessage = "관리자 페이지에서  웹소설 등록을 실패하였습니다.";
			movePath = "${ pageContext.servletContext.contextPath}";
			break;
		}
			alert(failedMessage);
		
			location.replace(movePath);
			
	})();

</script>
	
	
</body>
</html>