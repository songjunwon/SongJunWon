<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FirstBook</title>
<link rel="stylesheet" href="/firstbook/resources/css/reset.css">
    <link rel="stylesheet" href="/firstbook/resources/css/style.css">
</head>
<body>
    <div id="wrap">
    	<jsp:include page="../common/header.jsp"/>
        <main id="main" class="top_main">
            <div class="login_form">
                <div class="login_title">
                    로그인
                </div>
                <form action="${ pageContext.servletContext.contextPath }/member/login" method="post">
                    <div class="login_input_box">
                        아이디 <input type="text" name="memberId">
                    </div>
                    <div class="login_input_box">
                        비밀번호 <input type="password" name="memberPw">
                    </div>
                    <button type="submit">
                        Login
                    </button>
                </form>
                <div class="login_nav">
                    <ul>
                        <li><a href="#">아이디 찾기</a></li>
                        <li><a href="#">비밀번호 찾기</a></li>
                        <li><a href="${ pageContext.servletContext.contextPath }/member/regist">회원가입</a></li>
                    </ul>
                </div>
            </div>
        </main>
        <jsp:include page="../common/footer_member.jsp"/>
    </div>
</body>
</html>