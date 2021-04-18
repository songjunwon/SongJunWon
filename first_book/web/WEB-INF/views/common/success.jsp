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
		
		const successCode = "${requestScope.successCode}";
		
		var successMessage = "";
		
		var movePath = "";
		
		switch(successCode){
		
		case "insertMember" : 
			successMessage = "회원 가입에 성공하셨습니다!";
			movePath = "${ pageContext.servletContext.contextPath}";
			break;
			
		case "updateMember" : 
			
			successMessage = "회원 정보 수정에 성공하셨습니다!";
			movePath = "${ pageContext.servletContext.contextPath}/member/mypage";
			break;
			
		case "deleteMember" : 
			
			successMessage = "회원 탈퇴에 성공하셨습니다!";
			movePath = "${ pageContext.servletContext.contextPath}/member/logout";
			break;

		case "incrementFreeCoin" : 
			
			successMessage = "코인 획득!";
			movePath = "${ pageContext.servletContext.contextPath}/member/mypage";
			break;

		case "insertWebnovel" : 
			successMessage = "웹소설 등록을 완료하였습니다.";
			movePath = "${ pageContext.servletContext.contextPath}/admin/webNovel";
			break;	
		
		}
			alert(successMessage);
		
			location.replace(movePath);
			
	})();

</script>
	
	
</body>
</html>