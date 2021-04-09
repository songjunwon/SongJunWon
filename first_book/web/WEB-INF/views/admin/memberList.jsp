<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center"> 회원 목록 전체 조회 </h1>
	
	<table align="center" border="1">
	
		<tr> 
			<th>회원번호</th>
			<th>회원이름</th>
			<th>아이디</th>
			<th>회원암호</th>
			<th>회원이메일</th>
			<th>회원주소</th>
			<th>회원생년월일</th>
			<th>로그인카운트</th>
			<th>탈퇴여부</th>
			<th>탈퇴일자</th>
			<th>회원분류</th>
			<th>차단여부</th>
			<th>차단일자</th>
			<th>가입일자</th>
			
		</tr>
		<c:forEach var="mem" items="${ requestScope.memList }">	
		
			<tr>
				<td>${ mem.memNum }</td>
				<td>${ mem.memName }</td>
				<td>${ mem.memId }</td>
				<td>${ mem.memPwd }</td>
				<td>${ mem.memEmail }</td>
				<td>${ mem.memAddress }</td>
				<td>${ mem.memBirthDate }</td>
				<td>${ mem.memLoginCount }</td>
				<td>${ mem.memWithdrawYn }</td>
				<td>${ mem.memWithdrawDate }</td>
				<td>${ mem.memClass }</td>
				<td>${ mem.memBlockYn }</td>
				<td>${ mem.memBlockDate }</td>
				<td>${ mem.memEnrollDate }</td>
	
			</tr>
		
		</c:forEach>
		
	</table>
	
</body>
</html>