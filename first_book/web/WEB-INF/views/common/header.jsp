<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>Insert title here</title>
<link rel="stylesheet" href="/firstbook/resources/css/contest/header.css">
</head>
<body>
		<%-- <div class="menu-area">
		<div class="nav-area">
			<ul>
				<li><a href="${ pageContext.servletContext.contextPath }">HOME</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/member/login">로그인</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/webnovel/list">웹소설리스트</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/contest/list">공모전</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/board/list">기능1</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/thmbnail/list">기능 2</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/admin/list">(test)계정 전체 조회</a></li>
			</ul>
		</div> <!-- nav-area end -->
	</div> <!-- menu-area end --> --%>
	
	<header class="header" class="fixed">
            <div class="border">
                <div class="logo_box">
                    <a href="${ pageContext.servletContext.contextPath }" title="more"><img src="/firstbook/resources/image/contest/logo.png" alt="more"></a>

                </div>

                <div class="menu_box">

                    <nav class="nav">

                        <ul>
                            <li><a href="${ pageContext.servletContext.contextPath }/webnovel/list" class="main-btn">연재</a></li>
                            <li><a href="#" class="main-btn">완결</a></li>
                            <li><a href="${ pageContext.servletContext.contextPath }/contest/list" class="main-btn">공모전</a></li>
                            <li><a href="#" class="main-btn">이벤트</a></li>
                            <li><a href="${ pageContext.servletContext.contextPath }/board/list" class="main-btn">고객문의</a></li>
                            <li><a href="#" class="main-btn">단행본</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="login_box">
                    <ul>
                        <!-- <li><a href="#" class="main-btn">충전하기</a></li> -->
                        <li><a href="${ pageContext.servletContext.contextPath }/member/login" class="main-btn">로그인</a></li>
                        <!-- <li><a href="#" class="main-btn">ㅁㅁㅁ님</a></li> -->
                    </ul>
                </div>

            </div>
        </header>
</body>
</html>