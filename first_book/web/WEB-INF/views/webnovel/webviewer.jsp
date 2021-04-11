<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="/firstbook/resources/css/webnovel/webViewer.css">
<link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">
<link rel="stylesheet" href="/firstbook/resources/css/common/style.css">
</head>


<body>
	현재 소설 1번의 1번 챕터의 내용은 ? ${ requestScope.perChap.webNovContent }
    
    <div id="wrap">
        <section class="sec1">
        <table class="tab_viewer">
            <tr>
                <td class="plusminus">
                    <button class="plusbtn"> + </button>
                    <button class="minusbtn"> - </button>
                </td>
                <td colspan="2" class="title">
                    <p class="title_real"> 제목이 있는 곳</p>
                </td>
                <td class="nextback">
                    <button class="nextbtn"> + </button>
                    <button class="backbtn"> - </button>
                </td>
            </tr>
            <c:forEach var = "dd" items="${requestScope. }">
            <tr>
                <td colspan="2" class="page">
                    <pre class="pagediv1">

                    </pre>
                </td>
                <td colspan="2" class="page">
                    <pre class="pagediv2">
    슬픔이 차올라서 한잔을 채우다가
    떠난 그대가 미워서
    나 한참을 흉보다가
    나 어느새 그대 말투 내가 하죠
    난 늘 술이야 맨날 술이야
    널 잃고 이렇게 내가 힘들 줄이야
    이젠 난 남이야 정말 남이야
    널 잃고 이렇게 우린 영영 이제
    우리 둘은 남이야
    슬픔이 차올라서 한잔을 채우다가
    떠난 그대가 미워서
    나 한참을 흉보다가
    또다시 어느새 그대 말투 내가 하죠
    난 늘 술이야 맨날 술이야
    널 잃고 이렇게 내가 힘들 줄이야
    이젠 난 남이야 정말 남이야
    널 잃고 이렇게 우린 영영 이제                   
                                        
                    </pre>
                </td>
            </tr>
            </c:forEach>
            <tr>
                <td colspan="2" class="pageNum"> <p class="page1Num_real"> 1pg </p> </td>
                <td colspan="2" class="pageNum"> <p class="page2Num_real"> 2pg </p> </td>
            </tr>
        </table>
        </section>
    </div>
</body>
</html>