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
		<div class="menu-area">
		<div class="nav-area">
			<ul>
				<li><a href="${ pageContext.servletContext.contextPath }">HOME</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/admin/main">관리자 메인</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/admin/memlist">회원 조회</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/admin/webNovel">웹소설 관리</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/admin/novel">단행본 관리</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/admin/QNA">문의관리</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/admin/contest">공모전</a></li>
			</ul>
		</div> <!-- nav-area end -->
	</div> <!-- menu-area end -->
	
</body>
</html>