<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
    <div id="wrap">
        <main id="main" class="top_main">
            <div class="login_form">
                <div class="login_title">
                    회원가입
                </div>
                <form action="${ pageContext.servletContext.contextPath }/member/regist" method="post">
                    <div class="login_input_box">
                        이름 <input type="text" name="name">
                    </div>
                    <div class="login_input_box">
                        아이디 <input type="text" name="memberId">
                    </div>
                    <label>아이디 중복 검사 결과</label>
                    <div class="login_input_box">
                        비밀번호 <input type="password" name="memberPw">
                    </div>
                    <div class="login_input_box">
                        비밀번호확인 <input type="password" name="memberPwYn">
                    </div>
                    <label>비밀번호 일치 검사 결과</label>
                    <div class="login_input_box">
                        생년월일 <input type="date" name="birth">
                    </div>
                    <div class="login_input_box">
                        이메일 <input type="email" name="email">
                    </div>
                    <button type="submit">
                        Join
                    </button>
                </form>
                <div class="login_nav">
                        <a href="#">돌아가기</a>
                </div>
            </div>
        </main>
        <jsp:include page="../common/footer_member.jsp"/>
    </div>
	
</body>
</html>