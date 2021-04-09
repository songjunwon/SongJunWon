<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">
<link rel="stylesheet" href="/firstbook/resources/css/member/style.css">
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
                        이름 <input type="text" name="memName" required>
                    </div>
                    <div class="login_input_box">
                        아이디 <input type="text" id="memId" name="memId" required>
                    </div>
                    <p id=idCheckResult>아이디는 4글자 이상 작성해주세요.</p>
                    <div class="login_input_box">
                        비밀번호 <input type="password" id="memPwd" name="memPwd" required>
                    </div>
                    <div class="login_input_box">
                        비밀번호확인 <input type="password" id="memPwYn" name="memPwYn" required>
                    </div>
                    <p id=pwCheckResult>비밀번호는 4글자 이상 작성해주세요.</p>
                    <div class="login_input_box">
                        생년월일 <input type="date" name="memBirthDate" required>
                    </div>
                    <div class="login_input_box">
                        이메일 <input type="email" name="memEmail">
                    </div>
                    <button type="button" id="searchZipCode" class="chkButton">
                        주소 검색
                    </button>
                    <div class="login_input_box">
                        우편번호 <input type="text" name="memZipCode" id="memZipCode" readonly>
                    </div>
                    <div class="login_input_box">
                        주소 <input type="text" name="memAddress" id="memAddress" readonly>
                    </div>
                    <div class="login_input_box">
                        상세주소 <input type="text" name="memDetailAddress" id="memDetailAddress" required>
                    </div>
                    <button type="submit" id="joinButton">
                        Join
                    </button>
                </form>
                <div class="login_nav">
                        <a href="${ pageContext.servletContext.contextPath}">홈으로</a>
                </div>
            </div>
        </main>
        <jsp:include page="../common/footer_member.jsp"/>
    </div>
	
	<!-- 다음 우편번호 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		var IdYn = "N";
		var PwYn = "N";
		
		$searchZipCode.onclick = function(){
			
			new daum.Postcode({
				oncomplete : function(data){
					document.getElementById("memZipCode").value = data.zonecode;
					document.getElementById("memAddress").value = data.address;
					document.getElementById("memDetailAddress").focus();
				}
			}).open();
		}
		
		$("#memId").keyup(function(){
			if($("#memId").val().length > 3) {
				var memId = $("#memId").val();
					
				$.ajax({
					url: "/firstbook/member/idCheck",
					type: "post",
					data: {memId : memId},
					success: function(data){
						if(data == ""){
							$("#idCheckResult").text("사용가능한 아이디 입니다.");
						} else {
							$("#idCheckResult").text("이미 사용중인 아이디 입니다.");
							JoinYn = "N"
						}
					},
					error: function(request, status, error){
						alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					}
				});
			} else if($("#memId").val().length <= 3) {
				$("#idCheckResult").text("아이디는 4글자 이상 작성해주세요.");
				JoinYn = "N"
			}	
		});
		
		$("#memPwYn").keyup(function(){
			if($("#memPwYn").val().length > 3) {
				var memPwd = $("#memPwd").val();
				var memPwYn = $("#memPwYn").val();
				if(memPwd == memPwYn){
					$("#pwCheckResult").text("비밀번호가 일치합니다.");
					PwYn = "Y"
				} else {
					$("#pwCheckResult").text("비밀번호가 일치하지않습니다.");
					PwYn = "N"
				}
			} else if($("#memPwYn").val().length <= 3 ) {
				$("#pwCheckResult").text("비밀번호는 4글자 이상 작성해주세요.");
				PwYn = "N"
			}	
		});
		
		$("#memPwd").keyup(function(){
			if($("#memPwd").val().length > 3) {
				var memPwd = $("#memPwd").val();
				var memPwYn = $("#memPwYn").val();
				if(memPwd == memPwYn){
					$("#pwCheckResult").text("비밀번호가 일치합니다.");
					PwYn = "Y"
				} else {
					$("#pwCheckResult").text("비밀번호가 일치하지않습니다.");
					PwYn = "N"
				}
			} else if($("#memPwd").val().length <= 3 ) {
				$("#pwCheckResult").text("비밀번호는 4글자 이상 작성해주세요.");
				PwYn = "N"
			}	
		});
		
	</script>
</body>
</html>