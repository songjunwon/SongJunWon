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

	111
	<table>
		
		<tr>
			<td>
				<c:out value="${ requestScope.webNovelUpdate.webNovTitle }"/>
				
			</td>
		
		</tr>
	
	</table>
	
	
	
<%-- 			<form action="${ pageContext.servletContext.contextPath }/admin/webNovel" method="post">
			
	<table border="1" align="center">
					<tr>
						<td>제목</td>
						<td><input type="text" size="50" name="title" value="${ requestScope.webNovelUpdate.webNovTitle }"></td>
					</tr>

					<tr>
						<td>내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="body" cols="60" rows="15" style="resize:none;" required><c:out value="${ requestScope.notice.body }"/></textarea>
						</td>
					</tr>
	</table>
		
		<h2 align="center">공지 사항 수정</h2>
				<input type="hidden" name="noticeNo" value="${ requestScope.notice.no }">
				
				<br>
					<button type="reset" id="cancleNotice">취소하기</button>
					<button type="submit">수정하기</button>
			
			
			</form>  --%>
</body>
</html>