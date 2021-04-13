<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="/firstbook/resources/css/contest/header.css">
</head>
<body>
	
	<header class="header" class="fixed">
            <div class="border">
                <div class="logo_box">
                    <a href="${ pageContext.servletContext.contextPath }" title="more"><img src="/firstbook/resources/image/contest/logo.png" alt="more"></a>

                </div>

<<<<<<< HEAD
				<c:if test="${ empty sessionScope.loginMember }">
	                <div class="menu_box" id="menu_box">
	                    <nav class="nav">
	                        <ul>
	                            <li><a href="" class="main-btn">연재</a></li>
	                            <li><a href="" class="main-btn">완결</a></li>
	                            <li><a href="" class="main-btn">공모전</a></li>
	                            <li><a href="" class="main-btn">이벤트</a></li>
	                            <li><a href="" class="main-btn">고객문의</a></li>
	                            <li><a href="" class="main-btn">단행본</a></li>
	                            
	                        </ul>
	                    </nav>
	                </div>
                </c:if>
				<c:if test="${ !empty sessionScope.loginMember }">
	                <div class="menu_box">
	                    <nav class="nav">
	                        <ul>
	                            <li><a href="${ pageContext.servletContext.contextPath }/webnovel/list" class="main-btn">연재</a></li>
	                            <li><a href="#" class="main-btn">완결</a></li>
	                            <li><a href="${ pageContext.servletContext.contextPath }/contest/list" class="main-btn">공모전</a></li>
	                            <li><a href="#" class="main-btn">이벤트</a></li>
	                            <li><a href="${ pageContext.servletContext.contextPath }/board/list" class="main-btn">고객문의</a></li>
	                            <li><a href="#" class="main-btn">단행본</a></li>
	                            <c:if test="${ !empty sessionScope.loginMember eq 'admin'}">

									<li><a href="${ pageContext.servletContext.contextPath }/admin/main" class="main-btn">관리자 메인</a></li>

								</c:if>
	                        </ul>
	                    </nav>
	                </div>
                </c:if>

                <div class="login_box">
	                <c:if test="${ empty sessionScope.loginMember }">
	                    <ul>
	                        <li><a href="${ pageContext.servletContext.contextPath }/member/regist" class="main-btn">회원가입</a></li>
	                        <li><a href="${ pageContext.servletContext.contextPath }/member/login" class="main-btn">로그인</a></li>
	                    </ul>
	                </c:if>
	                <c:if test="${ !empty sessionScope.loginMember }">
	                    <ul>
	                        <li><a href="${ pageContext.servletContext.contextPath }/member/logout" class="main-btn">로그아웃</a></li>
	                        <li><a href="${ pageContext.servletContext.contextPath }/member/mypage" class="main-btn"><c:out value="${ sessionScope.loginMember.memName }"/>님</a></li>
	                        <li><a href="#" class="main-btn">코인: <c:out value="${ sessionScope.loginMember.memCoin }"/></a></li>
	                    </ul>
	                </c:if>
                </div>

            </div>
        </header>
        <script>
        	$("#menu_box").click(function() {
        		if(${ empty sessionScope.loginMember }){
        			alert("로그인 후 이용가능합니다.");
        		}
        	});
        </script>
</body>
</html>