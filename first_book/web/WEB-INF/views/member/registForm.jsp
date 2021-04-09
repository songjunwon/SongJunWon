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
                        이름 <input type="text" name="memName">
                    </div>
                    <div class="login_input_box">
                        아이디 <input type="text" name="memId">
                    </div>
                    <label>아이디 중복 검사 결과</label>
                    <div class="login_input_box">
                        비밀번호 <input type="password" name="memPwd">
                    </div>
                    <div class="login_input_box">
                        비밀번호확인 <input type="password" name="memPwYn">
                    </div>
                    <label>비밀번호 일치 검사 결과</label>
                    <div class="login_input_box">
                        생년월일 <input type="date" name="memBirthDate">
                    </div>
                    <div class="login_input_box">
                        이메일 <input type="email" name="memEmail">
                    </div>
                    <button type="button" id="searchZipCode">
                        주소 검색
                    </button>
                    <div class="login_input_box">
                        우편번호 <input type="email" name="memZipCode" id="memZipCode">
                    </div>
                    <div class="login_input_box">
                        주소 <input type="email" name="memAddress" id="memAddress">
                    </div>
                    <div class="login_input_box">
                        상세주소 <input type="email" name="memDetailAddress" id="memDetailAddress">
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
	
	<!-- 다음 우편번호 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		
		$searchZipCode.onclick = function(){
			
			new daum.Postcode({
				oncomplete : function(data){
					document.getElementById("memZipCode").value = data.zonecode;
					document.getElementById("memAddress").value = data.address;
					document.getElementById("memDetailAddress").focus();
				}
			}).open();
		}
	</script>
</body>
</html>