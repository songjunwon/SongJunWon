<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<body>
<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp"/>
	<c:set var="webNovel" value="${ requestScope.webNovelUpdate }"/>
	
	<form action="${ pageContext.servletContext.contextPath }/admin/webNovel" method="post">
			

	<br><br><br><br><br>			
			
	<table border="1" >
					
					<tr>
						<td>제목</td>
						<td><input type="text" size="50" name="title" value="${ webNovel.webNovTitle }"></td>
					</tr>

					<tr>
						<td>내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="body" cols="60" rows="15" style="resize:none;" required><c:out value="${ webNovel.webNovInform }"/></textarea>
						</td>
					</tr>
	</table>
			<div align=>
				<input type="hidden" name="noticeNo" value="${ webNovel.webNovNum }">
				
				<br>
					<button type="reset" id="cancleNotice">취소하기</button>
					<button type="submit">수정하기</button>
			
			</div>
			
	</form> 
</body>
</html>