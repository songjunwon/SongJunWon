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
<link rel="stylesheet" href="/firstbook/resources/css/member/style.css">
<link rel="shortcut icon" href="#">
</head>
<body>
<jsp:include page="../common/header.jsp"/>
		<br><br><br><br><br><br>
  <div id="wrap">
        <section class="sec1">
            <table class="tab_main">
                <tr>
                    <td rowspan="5" class="main_img">
                        <img src="${ requestScope.webnovel.webNovImgLocation}" class="main_img_real" alt="메인사진">
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
                    <td> <button type="button" class="firstBtn" onclick="first2()">첫화보기</button> 
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
            <h4 class="everynday">매주 <c:out value="${ requestScope.webnovel.dayOfWeek }" />요일 연재</h4>
            <br><br>
            <table class="tab_mid">
            	<c:forEach var="webNovelChap" items="${ requestScope.webnoveldetail}"> 
            	<tr>
                    <td class="chap_img"><img src="${ requestScope.webnovel.webNovImgLocation}" class="chap_img_real" alt="1화부터사진">
                    </td>
                    <td class="prolog">
                        <h2 class="chap_date"> 등록 날짜 :  ${ webNovelChap.webChapNumDate} </h2>                       
                    </td> 
                    <td class="freeBtn">
                     <button class="freebtn_real" id="freebtn_real_2" type="button" onclick="test(${ webNovelChap.webNovChapNum.webNovChapNum}, '${webNovelChap.chapReadOrNot}')" >
                    ${ webNovelChap.webNovChapNum.webNovChapNum}화 보기 </button>
                    <input type="hidden" id="webNovNum" value= "${ webNovelChap.webNovChapNum.webNovChapNum}"> 
             		</td>
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
<%--             <c:forEach var="webnoveldetail" items="${ requestScope.webnoveldetail}"> --%>
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
    <%--            </c:forEach> --%>
            </table>
        </section>
    </div>
  <script>
   
	const link = "${ pageContext.servletContext.contextPath}/webnovel/chapList";


	function test(var1, var2){
			
		var t = var1;
		var t2 = var2;
		console.log(t);
		console.log(t2);
		
		if(t2 == 'N'){
			 alert("해당 웹소설의 " + t + "화는 준비 중에 있습니다!")
			 
			} else if (t2 == 'Y'){
				
			location.href = link  + "?currentWebNov=" + ${ requestScope.webnovel.webNovNum} + "&currentChap=" + t;			
			}

		}
	function first2(){
	

		location.href = link  + "?currentWebNov=" + ${ requestScope.webnovel.webNovNum} + "&currentChap=" + 1;

	}
	</script> 
	
</body>
</html>