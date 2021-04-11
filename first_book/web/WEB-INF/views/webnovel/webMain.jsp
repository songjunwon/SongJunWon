<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="/firstbook/resources/css/webnovel/webnovel.css">
<link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">
<link rel="stylesheet" href="/firstbook/resources/css/common/style.css">
</head>
<body>
	<!-- header 삽입 해야 함 -->	
	<jsp:include page="../common/header.jsp"/>
	<div >
		<br>
		<h2 align="center">웹소설 목록</h2>
		<div >
			<table align="center" id="listArea">
				<tr>
					<th>글번호</th>
					<th width="300px">글제목</th>
					<th width="100px">작가</th>
					<th width="500px">글 정보 </th>
				</tr>
				<c:forEach items="${ webNovelList }" var="webnovel">
					<tr>
						<td><c:out value="${ webnovel.webNovNum }"/></td>
						<td><c:out value="${ webnovel.webNovTitle }"/></td>
						<td><c:out value="${ webnovel.webNovAuthor }"/></td>
						<td><c:out value="${ webnovel.webNovInform }"/></td>						
					</tr>
				</c:forEach>
			</table>
		</div>
		
	</div>
	
	<script>
		/* 제이쿼리 이용하는 경우 */
		$(function(){
			$("td").hover(function(){
				$(this).parent().css({"background" : "orangered", "cursor":"pointer"});
			},function(){
				$(this).parent().css("background", "black");
			}).click(function(){
				const webNovNum = $(this).parent().children(":eq(0)").text();
				location.href = "${ pageContext.servletContext.contextPath }/webnovel/detail?webNovNum=" + webNovNum;
			})
		})
		
		
	</script>
</body>
</html>