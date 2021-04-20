<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/firstbook/resources/css/admin/main.css">


<body>
	<jsp:include page="adminHeader.jsp"/>
		

	
		<section>
		

		<c:set var="now" value="<%=new java.util.Date()%>" />
		 <c:set var="sysTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd E hh:mm:ss" /></c:set>
	
		
		<article id="a1">
		<div id="date">
			<figure>
				<figcaption>
				<label style="color:white; font-size:50px;"> 관리 현황표 </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label style="color:white;">현재시각 :</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${sysTime}" />
				</figcaption>
			</figure>
		</div>
		
		</article>
		
		
		
		<article id="a2">
			
			<label style="font-size:30px;"> 회원관리 </label>
			<br>
			<table border="1">
				<tr>
					<th> 총 회원수
				</tr>
				<tr>
					<td>
						<c:out value="${ requestScope.allMemberCount }"/>
					</td>
				</tr>
			
			</table> 
		</article>
		
		
		
		<article id="a3">
			
			<table>
				
				<tr>
					<th>날짜</th>
					<th>방문자</th>
					<th>웹소설 결제</th>
					<th>단행본 구매</th>
				
				</tr>
				
				<tr>
				
					
				
				</tr>
			
			</table>
		
		</article>
		
		
		
		<article id="a4">
		
			급상승 웹소설
		
		</article>
		
		
		
		<article id="a5">
			
			급상승 단행본
		
		</article>
	
	
	
	</section>
	
</body>
</html>