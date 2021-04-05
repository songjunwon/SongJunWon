<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="/jsp/resources/css/common.css">

<script type="text/javascript" src="/jsp/resources/js/event.js"> </script>

<title>Insert title here</title>

</head>
<body>

	<!-- header start -->

	<div class="header">
	
		<!-- headline -->	
		
		<h1 align="center">Welcome JSP World!</h1>
		
		
		<!-- login area -->
		
		<div class="login-area">
			
			<!-- isLogin false -->
			
			<c:if test="${ empty sessionScope.loginMember }">
			
				<!-- loginForm -->
				<form id="loginForm" action="${ pageContext.servletContext.contextPath }/member/login" method="post">
				
				<table>
				
					<tr>
					
						<td>
							<label class ="text" > ID : </label>
							
						</td>
						
						<td>
							<input type ="text" name="memberId">
							
						</td>
						
					</tr>
					
					<tr>
					
						<td>
							
							<label class="text">PWD : </label>
						
						</td>
						
						<td>
						
							<input type="password" name="memberPwd">
						</td>
						
						
					</tr>	
					
					
					
				</table>
				<div class="btns" align="right">
				
					<input type="button" class="btn btn-yg" value="회원가입" id="regist"> 
					<input type="submit" class="btn btn-or" value="로그인" id="login"> 
				
				</div>
				</form>
			</c:if>
			
			<!-- isLogin true -->
			<c:if test="${ !empty sessionScope.loginMember }">
			
				<h3><c:out value="${sessionScope.loginMember.nickName}"/>님의 방문을 환영합니다.</h3>
				
				<div class="btns">
					
					<input type="button" class="btn btn-yg" value="정보수정" id="update"> 
					<input type="button" class="btn btn-or" value="로그아웃" id="logout"> 
				
				</div>
				
				
				
			</c:if>
		
		</div> <!-- login-area end -->
		
	</div> <!-- header end -->
	
	
	<!-- float remove  -->
	
	
	<br clear="both">
	
	
	<!-- menu area -->
	
	<div class="menu-area">
		
		<div class="nav-area">
			
			<ul>
				
				<li><a href="${ pageContext.servletContext.contextPath }">HOME</a>
				<li><a href="${ pageContext.servletContext.contextPath }/notice/list">공지사항</a>
				<li><a href="${ pageContext.servletContext.contextPath }/board/list">게시판</a>
				<li><a href="${ pageContext.servletContext.contextPath }/thumbnail/list">사진게시판</a>
			
			</ul>
			
		</div> <!-- nav-area end -->
	
	</div> <!-- menu-area end -->
	
	
	
	
</body>
</html>