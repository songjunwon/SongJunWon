<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type = "text/javascript" >
		setTimeout(function(){
	    	window.history.forward();
	    }, 0);	
</script>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
	<!-- regist form outer area -->
	
	<div class = "outer outer-member-insert">
	
		<br>
		
		<h2 align="center">회원가입</h2>
		
		<!-- regist form -->
	
		<form id = "joinform" action="${pageContext.servletContext.contextPath }/member/regist" method="post">
		
			<table align="center">
			
				<tr>
				
					<td width="200px">* 아이디</td>
					<td> <input type="text" maxlength="13" name="memberId" id="memberId" required> </td>
					<td width="100px"> <input type="button" value="중복확인" class="btn btn-or" id="duplicationCheck"> </td>
				</tr>
				
				<tr>
				
					<td>* 비밀번호</td>
					<td> <input type="password" maxlength="13" name="memberPwd" required> </td>
					<td></td>
				</tr>

				<tr>
				
					<td>* 비밀번호 확인</td>
					<td> <input type="password" maxlength="13" name="memberPwd2" required> </td>
					<td></td>
				</tr>
				<tr>
				
					<td>* 닉네임</td>
					<td> <input type="text" maxlength="5" name="nickname" required> </td>
					<td></td>
				</tr>

				<tr>
				
					<td> 연락처</td>
					<td> <input type="tel" name="phone" required> </td>
					<td></td>
				</tr>
				<tr>
				
					<td> 이메일</td>
					<td> <input type="email" name="email" required> </td>
					<td></td>
				</tr>
				<tr>
				
					<td> 우편번호</td>
					<td> <input type="text" name="zipCode" id="zipCode" readonly> </td>
					<td> <input type="button" value="검색" class="btn btn-yg" id="searchZipCode"> </td>
				</tr>
				<tr>
				
					<td> 주소</td>
					<td> <input type="text" name="address1" id="address1" readonly> </td>
					<td></td>
				</tr>
				<tr>
				
					<td> 상세주소</td>
					<td> <input type="text" name="address2" id="address2"> </td>
					<td></td>
				</tr>
				
				
			
			</table>
			
			<br>
			
			<div class="btns" align="center">
				<input type="reset" value="메인으로" class="btn btn-yg" id="goMain" onclick="location.href='${pageContext.servletContext.contextPath}'" >
				
				<input type="submit" value="가입하기" class="btn btn-or">
			
			</div>
		
		
		</form>
		
	
	</div> <!-- outer end -->
	
	
	<!--  Daum Zipcode API -->
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script type="text/javascript">
		
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");
		
		$searchZipCode.onclick = function(){
			
			new daum.Postcode({
				
				oncomplete : function(data){
					
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
					
				}
				
			}).open();
			
		}
		
		$goMain.onclick=function(){
			
			location.href = "${ pageContext.servletContext.contextPath}";
			
		}
	</script>
	
</body>
</html>