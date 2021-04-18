<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="/firstbook/resources/css/webnovel/webViewer.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<body>
	<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp"/>
	<br><br><br><br><br><br>
	<div id="wrap">
		<h1>${requestScope.pageInfo.pageNo }</h1>
		<section class="sec1">
			<table class="tab_viewer">
				<c:choose>
					<c:when test="${!empty requestScope.currentChap }">
						<tr>
							<td class="goback">
								<button onclick="goback()" class="gobackToMain" type="button">목록으로</button>
							</td>
							<td colspan="2" class="title">
								<p class="title_real"> <c:out value="${ requestScope.title.webNovTitle }"/></p>
							</td>
							<td class="nextback"><c:if
									test="${requestScope.pageInfo.pageNo == 1 }">
									<button class="backbtn" disabled><</button>
								</c:if> <c:if test="${requestScope.pageInfo.pageNo > 1 }">
									<button id="searchStartPage" class="backbtn"
										onclick="back(this)"><</button>
								</c:if>
								 <%-- <c:if test="${ requestScope.pageInfo.pageNo lt requestScope.pageInfo.maxPage }"> --%>
									<button type="button" id="searchNextPage" class="nextbtn" onclick="next()">></button>
								<%-- </c:if> --%>
								</td>
						</tr>
					</c:when>
				</c:choose>
			
						<tr>
				<c:forEach var="perChapter" items="${requestScope.perChap }">
							<td colspan="2" class="page"><textarea class="pagediv1"><c:out value="${ perChapter.webNovPageContent }"/></textarea>
                    	</td>
				</c:forEach>
						</tr>
				
				<tr>
				
				<c:forEach var="perChapter" items="${requestScope.perChap }">
					<td colspan="2" class="pageNum">
						<p class="page1Num_real"> <c:out value="${ perChapter.webNovPageNum.webNovPageNum }"/> pg</p>
					</td>
				</c:forEach>

				</tr>
			</table>
		</section>
		<%-- 	<h1>${ perChapter.webNovNum.webNovNum}</h1>
	<h1>${ perChapter.webNovChapNum.webNovChapNum}</h1>  --%>

	</div>

	<script>
/* 	 const $searchNextPage = document.getElementById("searchNextPage"); 
	console.log($searchNextPage); */
	const link = "${ pageContext.servletContext.contextPath }/admin/chapList"; 
	const gobackLink = "${ pageContext.servletContext.contextPath }/admin/novel/update"; 
	<%--	
	if(document.getElementById("searchStartPage")){
		const $searchStartPage = document.getElementById("searchStartPage");
		$searchStartPage.onclick = function(){
			location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }";
		}
	}
		
	
	if(document.getElementById("searchNextPage")){
		const $searchNextPage = document.getElementById("searchNextPage");
		$searchNextPage.onclick = function(){
			location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }";
		}
	} --%>
	
	
	function next(){
		
		var t = ${pageInfo.pageNo};
		/* 다음 쪽이 계속 있을 때 */
		if(${pageInfo.pageNo} < ${pageInfo.maxPage}){
		location.href = link  + "?currentWebNov=${ requestScope.currentWebNov}&currentChap=${ requestScope.currentChap}&currentPage=" + (parseInt(t) + 1);
		}else {		// 모든 내용을 봤을 때 알람!
			alert('${ requestScope.title.webNovTitle }의 ${ requestScope.currentChap} 화를 모두 보셨습니다! ');
		}	
	}
	/* 뒤쪽 내용을 볼 때 */
	function back(){
		
		var t = ${pageInfo.pageNo};

		location.href = link  + "?currentWebNov=${ requestScope.currentWebNov}&currentChap=${ requestScope.currentChap}&currentPage=" + (parseInt(t) - 1);
	}
	/* 목록으로 돌아가기 */
	function goback(){
		
		location.href = gobackLink  + "?webNovNum=${ requestScope.currentWebNov}";
	}
	

	</script>
</body>
</html>