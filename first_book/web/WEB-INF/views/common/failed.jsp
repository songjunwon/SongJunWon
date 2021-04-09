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
			movePath = "${ pageContext.servletContext.contextPath}";
			break;
		
		
		}
			alert(failedMessage);
		
			location.replace(movePath);
			
	})();

</script>
	
	
</body>
</html>