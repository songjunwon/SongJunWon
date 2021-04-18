<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
                    <td> <button type="button" class="firstBtn" onclick="firstChap()">첫화보기</button> 

                        <button  type="button" id="wishBtn" class="likeBtn" >하트</button>
                        <input class="loginMember" type="hidden" id="loginMember" name="loginMember" value="${sessionScope.loginMember.memNum }">
						<input class="wishList" type="hidden" id="wishList" name="wishList" value="${ requestScope.webnovel.webNovNum }" >

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
            	    <!-- 5화까지 무료! -->
            	<c:forEach var="webNovelChap" items="${ requestScope.webnoveldetail}"> 
            	<tr>
                    <td class="chap_img"><img src="${ requestScope.webnovel.webNovImgLocation}" class="chap_img_real" alt="1화부터사진">
                    </td>
                    <td class="prolog">
                        <h2 class="chap_date"> 등록 날짜 :  ${ webNovelChap.webChapNumDate} </h2>                       
                    </td> 
                    <td class="freeBtn">               
                      <button class="freebtn_real" id="freebtn_real_2" type="button" onclick="webView(${ webNovelChap.webNovChapNum.webNovChapNum}, '${webNovelChap.chapReadOrNot}')" >
                    무료보기 </button>
                    <input type="hidden" id="webNovNum" value= "${ webNovelChap.webNovChapNum.webNovChapNum}"> 
             		 
             		</td>
                </tr>
                </c:forEach>
                  
                <!-- 6화부터 결제! -->
              <c:forEach var="webNovelChap2" items="${ requestScope.webnoveldetail2}"> 
            	<tr>
  
            		<td class="chap_img"><img src="${ requestScope.webnovel.webNovImgLocation}" class="chap_img_real" alt="1화부터사진">
                    </td>
                    <td class="prolog">
                        <h2 class="chap_date"> 등록 날짜 :  ${ webNovelChap2.webChapNumDate} </h2>                       
                    </td> 
                    <td class="freeBtn">
                    <form action="notFreeForm" method="get">
            		 <button class="freebtn_real"  type="button"  onclick="web(${ webNovelChap2.webNovChapNum.webNovChapNum}, '${webNovelChap2.chapReadOrNot}', ${ webNovelChap2.chapPerPrice }, '${webNovelChap2.chapPerIsUsed }', ${sessionScope.loginMember.memNum }, ${webNovelChap2.webNovNum.webNovNum } )" >
                    ${ webNovelChap2.webNovChapNum.webNovChapNum}화 보기 </button>
                    <input type="hidden" name="webNovNum"  value= "${ webNovelChap2.webNovChapNum.webNovChapNum}">

				<%-- 	<input type="hidden" name="webIdajax" id="webIdajax" > 
					<input type="hidden" name="webchapNumajax" id="webchapNumajax" name="webchapNumajax" >
					<input type="hidden" name="webNumajax" id="webNumajax" name="webNumajax" >
					<input type="hidden" name="chapReadOrNot" id="chapReadOrNot" name="chapReadOrNot" >
					<input type="hidden" name="chapPerPrice" id="chapPerPrice" name="chapPerPrice" >
					<input type="hidden" name="chapPerIsUsed" id="chapPerIsUsed" name="chapPerIsUsed" > --%>
            		</form>
            		</td> 
                </tr>
                </c:forEach>   
                    	
            </table>

        </section>
        
        <%-- 
        <section class="sec3">
            <hr>
            <h3 class="reply"> 댓글 <br></h3>
            <div class="replydiv" width="300px">
                <textarea name="댓글달기" class="replytext"  rows="6"></textarea>
            </div>
            <button type="submit" class="repliedbtn"> 등록하기 </button>
            <br><br>
            <table class="tab_reply">
             <c:forEach var="webnoveldetail" items="${ requestScope.webnoveldetail}"> >
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
             </c:forEach> 
            </table>
        </section> --%>
    </div>
    </body>
  <script>
   
	const link = "${ pageContext.servletContext.contextPath}/webnovel/chapList";

	/* 1 ~ 5화 까지 보기 */
	function webView(var1, var2){
			
		var t = var1;
		var test = var2;
		console.log(t);
		console.log(test);
		
		/* 선택한 웹소설 챕터가 없는 경우 */
		if(test == 'N'){
			 alert("해당 웹소설의 " + t + "화는 준비 중에 있습니다!")
			 
		/* 선택한 웹소설 챕터가 있는 경우 */
			} else if (test == 'Y'){
				
			location.href = link  + "?currentWebNov=" + ${ requestScope.webnovel.webNovNum} + "&currentChap=" + t;			
			}
		}
	
	/* 6화부터 보기 */
	 function web(var1, var2, var3, var4, var5, var6){
				
		var webNovChapNum = var1;
		var chapReadOrNot = var2;
		var chapPerPrice = var3;
		var chapPerIsUsed = var4;
		var memId = var5;
		var webNovNum = var6;

		console.log(webNovChapNum);
		console.log(chapReadOrNot);
		console.log(chapPerPrice);
		console.log(chapPerIsUsed);
		console.log(memId);

	
		/* 웹소설이 준비 되지 않은 경우 */
		if(chapReadOrNot == 'N'){
			
			 alert("해당 웹소설의 " + webNovChapNum + "화는 준비 중에 있습니다!")
			
		/* 웹소설이 준비된 경우 */
		} else if (chapReadOrNot == 'Y') {
			
		/* 선택한 웹소설을 이미 구매한 경우 */
			if(chapPerIsUsed == 'Y '){
		
			location.href = link  + "?currentWebNov=" + ${ requestScope.webnovel.webNovNum} + "&currentChap=" + webNovChapNum;			
		
			} else if (chapPerIsUsed == 'N ' ){			// 웹소설 챕터를 추가 구매해야하는 경우
				
				/* 코인이 100이하여서 추가구매를 해야하는 경우 */
				if( parseInt(${sessionScope.loginMember.memCoin}) <= parseInt(100)) {
			
					console.log(${sessionScope.loginMember.memCoin});
					alert('"현재 " + ${sessionScope.loginMember.memName} + "님의 현재 코인은" + ${sessionScope.loginMember.memCoin} + "으로 웹소설을 보시려면 코인을 추가로 구매하셔야 합니다."');
			
					
				/* 코인이 100이상이여서 추가구매를 하지않아도 되는 경우 */
				} else if(  parseInt(${sessionScope.loginMember.memCoin}) > parseInt(100)) {
					
					location.href = "${ pageContext.servletContext.contextPath}/member/chargeCoin?memId=" + ${sessionScope.loginMember.memNum} + "&webNovNum=" + webNovNum + "&webNovChapNum=" + webNovChapNum;

					return;
				}
			}
		}
	} 
				
	/* 첫화보기를 눌렀을 때 */
	function firstChap(){

		location.href = link  + "?currentWebNov=" + ${ requestScope.webnovel.webNovNum} + "&currentChap=" + 1;

	}
	
	/* 위시리스트 버튼 ajax */
	$("#wishBtn").click(function(){
 			
 			var wishlistWebnovNum = document.getElementById("wishList").value;
 			var loginMember = document.getElementById("loginMember").value;
 			console.log('wish' + wishlistWebnovNum);
 			console.log('login' + loginMember);
 	  
 				$.ajax({
 					url : "/firstbook/member/wishlistupdate",
 					method : "GET",
 					data : {
 						wishlistWebnovNum : wishlistWebnovNum,
 						loginMember : loginMember
 						},
 				
 					success: function (data) {
 				
 						 }, 
 						 
 						error: function(error,status){
 				                console.log(error);
 				                console.log(status);
 					}
 				});			
	}); 
 	
 	 /* n화 볼 때마다 업데이트 되는 ajax */	
 	<%-- $(function(){
        var currentPage = ${ requestScope.pageInfo.pageNo };
        console.log('currentPage : ' + currentPage);
        var currentWebNov = ${ requestScope.webnovel.webNovNum};
        
        $(window).scroll(function(){   
           if($(window).scrollTop() + $(window).height() + 3 > $(document).height()) {
              currentPage++;   
              /* console.log('currentlink' + currnetlink); */
                $.ajax({
                   url : '/firstbook/ajax/test',
                    type : 'get',  
                    data : { 
                          currentPage : currentPage,
                          currentWebNov : currentWebNov
                          },
                    success : function(data) {
                       console.log(currentPage);
                       if( currentPage === 1 ){
                          console.log(data);
                       } else {
                           var section = $(".sec2");
                          
                          for(var i = 0 ; i < data.length ; i++){
                             console.log(data[i].postNo);
                             console.log(data[i].postTitle);
                             console.log(data[i].minPrice);
                          }
                          } 
                             /* var postList = $("<table>").addClass("post");
                             var moreList = 
                             $("<tr id='thumbnail'>" + "<td colspan='2px'>" + data[i].postNo + "</td>" + "<tr>"
                                  + "<tr id='title'>" + "<td colspan='2px'>" + data[i].postTitle + "</td>" + "<tr>"
                                  + "<tr id='minPrice'>" + "<td width='80px'>" + "최소입찰가" + "</td>" 
                                     + "<td align='right'>" + data[i].minPrice + " 원 " +"</td>"+ "</tr>");
                             
                             postList.append(moreList);
                             section.append(postList); 
                          } 
                       } */
                    },
                    error : function(error) {
                       console.log("에러다 개발자야 뭐하냐!");
                    }
                });      /* ajax 종료 */
           }
        })      /* 스크롤 페이징 함수 종료 */
     }); --%>
	
	</script> 
</html>