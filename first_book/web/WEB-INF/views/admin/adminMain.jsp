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

<style>
	figure { text-align: left;}
	#a1 { position: absolute; width: 1474px; height: 182px; left: 223px; top: 165px; background-color: red; }
	#a1 table { margin-left: 50px; text-align : center; border: 1px solid #444444; border-collapse: collapse; border-spacing: 0; border-spacing: 30px;}
	#a1 table>thead { background-color: silver; }
	#a2 { position: absolute; left: 252px; top: 385px;}
	#a3 { position: absolute; left: 1051px; top: 402px; }
	#a3 table { margin-right: 50px; border: 1px solid #444444;}
	#a4 { position: absolute; left: 252px; top: 864px; }
	#a5 { position: absolute; width: 675px; height: 271px; left: 1022px; top: 864px; }
	 	
</style>

<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	
		<c:set var="now" value="<%=new java.util.Date()%>" />
		<c:set var="sysTime"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd E hh:mm:ss" /></c:set>
	
	
		<section>
				
		<article id="a1">
		
		<figure>
			<figcaption>
			오늘의 할일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${sysTime}" />
			</figcaption>
		</figure>
		
		<table>
			
			<thead>
				<tr>
					<th>입금전</th>
					<th>배송준비중</th>
					<th>배송대기</th>
					<th>배송중</th>
					<th>취소</th>
					<th>교환</th>
					<th>반품</th>
					<th>환불전</th>
					<th>게시물관리</th>
				
				</tr>
			</thead>

				<tr>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
				
				</tr>
		
		</table>
		
		</article>
		
		
		
		<article id="a2">
			
			방문자 유입현황
		
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