<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FirstBook</title>
<link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">
<link rel="stylesheet" href="/firstbook/resources/css/member/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>

    <div id="wrap">
        <main id="main" class="top_main">
            <div class="mypage">
                <div class="my_nav">
                    <ul>
                        <li class="my_nav_line on">홈</li>
                    </ul>
                    <p class="my_nav_line">웹소설</p>
                    <ul>
                        <li>내 서재</li>
                        <li>위시리스트</li>
                        <li>회원정보</li>
                        <li>결제내역</li>
                        <li>회원탈퇴</li>
                    </ul>
                    <p class="my_nav_line">단행본</p>
                    <ul>
                        <li>장바구니</li>
                        <li>구매내역</li>
                    </ul>
                </div>
                <div class="my_contents">
                    <div class="my_home on">
                        <h2>보유 코인 : <c:out value="${ sessionScope.loginMember.memCoin }"/></h2>
                        <h2>내 서재</h2>
                        <c:forEach var="useCoin" items="${ requestScope.useCoinList }">
                        	<div>
	                            <img src="${ pageContext.servletContext.contextPath }${ useCoin.webNov.webNovImgLocation }">
	                            <p>
	                            	${ useCoin.webNov.webNovTitle }<br>
	                            	${ useCoin.webNov.webNovAuthor }
	                            </p>
	                        </div>
                        </c:forEach>
                        <h2>위시리스트</h2>
                        <div>
                            <img src="./img/seria_mon_4.jpg">
                            <p>작품 이름 - 작가</p>
                        </div>
                        
                    </div>
                    <div class="my_lib">
                        <h2>내 서재</h2>
                        <c:forEach var="useCoin" items="${ requestScope.useCoinList }">
                        	<div>
	                            <img src="${ pageContext.servletContext.contextPath }${ useCoin.webNov.webNovImgLocation }">
	                            <p>
	                            	${ useCoin.webNov.webNovTitle }<br>
	                            	${ useCoin.webNov.webNovAuthor }
	                            </p>
	                        </div>
                        </c:forEach>
                    </div>
                    <div class="my_wish">
                        <h2>위시리스트</h2>
                        <div>
                            <img src="./img/seria_mon_4.jpg">
                            <p>작품 이름 - 작가</p>
                        </div>
                    </div>
                    <div class="my_member">
                        <h2>회원정보</h2>
                    </div>
                    <div class="my_weblist">
                        <h2>결제내역</h2>
                    </div>
                    <div class="my_bye">
                        <div>
	                        <h2>회원탈퇴</h2>
	                        <p>
	                        	정말 탈퇴하시겠다면<br>
	                        	비밀번호를 입력해주세요
	                        </p>
	                        <form action="${ pageContext.servletContext.contextPath }/member/delete" method="post">
	                        	<input type="password" name="memPwd">
	                        	<button type="submit">Distroy</button>
	                        </form>
                        </div>
                    </div>
                    <div class="my_basket">
                        <h2>장바구니</h2>
                    </div>
                    <div class="my_booklist">
                        <h2>구매내역</h2>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <jsp:include page="../common/footer.jsp"/>
    <script>
        $(document).ready(function() {
            $(".my_nav > ul > li").click(function() {
                var idx = $(".my_nav > ul > li").index($(this));
                $(".my_nav > ul > li").removeClass("on");
                $(".my_nav > ul > li").eq(idx).addClass("on");
                $(".my_contents > div").hide();
                $(".my_contents > div").eq(idx).show();
            });
        });
    </script>
</body>
</html>