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
<link rel="shortcut icon" href="#">
</head>
<body>
<jsp:include page="../common/header.jsp"/>
		
  <div id="wrap">
        <section class="sec1">
            <table class="tab_main">
                <tr>
                    <td rowspan="5" class="main_img">
                        <img src="/firstbook/resources/image/city1.PNG" class="main_img_real" alt="메인사진">
                    </td>
                    <td rowspan="5" class="space"></td>
                    <td class="space2"></td>
                </tr>
                <tr>
                    <td rowspan="2">
                        <div class="title_div">
                            <h2 class="title"> <c:out value="${ requestScope.webnovel.webNovTitle }"/> <br><br><br></h2>
                            <h3 class="title_small">
                                작가 : <c:out value="${ requestScope.webnovel.webNovAuthor }"/><br> 
                                #<c:out value="${ requestScope.webnovel.categoryName.categoryName }"/> <br><br>
                            </h3>
                        </div>
                        <div class="subtitle_div">
                            <h3 class="subtitle"> 작품소개<br><br> </h3>
                            <h3 class="subtitle_small">
                                <c:out value="${ requestScope.webnovel.webNovInform }"/>
                                <br><br>
                            </h3>
                        </div>
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td> <button type="button" class="firstBtn">첫화보기</button> 
                        <button  type="button" class="likeBtn">하트</button>
                    </td>
                </tr>
                <tr>
                    <td class="space2"></td>
                </tr>
            </table>
        </section>
        
        
        <section class="sec2">
            <hr>
            <h4 class="everynday">매주 <c:out value="${ requestScope.webnovel.dayOfWeek }" /> 연재</h4>
            <br><br>
            <table class="tab_mid">
            	<c:forEach var="webnoveldetail" items="${ requestScope.webnoveldetail}"> 
            	<tr>
                    <td class="chap_img"><img src="/firstbook/resources/image/flower1.PNG" class="chap_img_real" alt="1화부터사진">
                    </td>
                    <td class="prolog">
                        <h2 class="prolog_text"> 프롤로그</h2>
                        <h2 class="chap_date"> 14.08.19 </h2>                       
                    </td> 
                    <td class="freeBtn"> <button class="freebtn_real" id="freebtn_real_2" type="button" value="${ webnoveldetail.chapNum}">무료보기</button> </td>
                </tr>
                </c:forEach>
            </table>
        </section>
        
        
        <section class="sec3">
            <hr>
            <h3 class="reply"> 댓글 <br></h3>
            <div class="replydiv" width="300px">
                <textarea name="댓글달기" class="replytext"  rows="6"></textarea>
            </div>
            <button type="submit" class="repliedbtn"> 등록하기 </button>
            <br><br>
            <table class="tab_reply">
                <tr>
                    <td class="repliedId">
                        <p class="repliedId_real"> 여행을 가본다 </p>
                    </td>
                    <td class="repliedtime">
                        <p class="repliedtime_real">1분전</p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="replied">
                        <p class="replied_real"> 아니 난 다이아급이라고!</p>
                    </td>
                </tr>
            </table>
        </section>
    </div>
<%--  <script type="text/javascript">
   
	const link = "${ pageContext.servletContext.contextPath}/webnovel/chapList";

	if(document.getElementById("freebtn_real_2")) {
		const $freebtn_real_2 = document.getElementById("freebtn_real_2");
		$freebtn_real_2.onclick = function() {
			location.href = link + "?currentChap=${ requestScope.webnoveldetail.chapNum}";
		}
	
	</script> --%>  
	
</body>
</html>