<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FirstBook</title>
<link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">
<link rel="stylesheet" href="/firstbook/resources/css/member/style.css">
</head>
<body>
    <div id="wrap">
    	<jsp:include page="../common/header.jsp"/>
        <main id="main" class="top_main">
            <div class="login_form">
                <div class="login_title">
                    아이디 찾기
                </div>
                <form action="${ pageContext.servletContext.contextPath }/member/searchId" method="post">
                    <div class="login_input_box">
                        이름 <input type="text" name="memName" required>
                    </div>
                    <div class="login_input_box">
                        이메일 <input type="email" name="memEmail" required>
                    </div>
                    <button type="submit">
                        Search
                    </button>
                </form>
                <div class="login_nav">
                    <a href="${ pageContext.servletContext.contextPath}">홈으로</a>
                </div>
            </div>
        </main>
        <jsp:include page="../common/footer_member.jsp"/>
    </div>
</body>
</html>