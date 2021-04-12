<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹소설 뷰어 페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="/firstbook/resources/css/webnovel/webViewer.css">
<link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">
<link rel="stylesheet" href="/firstbook/resources/css/common/style.css">
</head>


<body>
	<div id="wrap">
		<section class="sec1">
			<table class="tab_viewer">
				<c:choose>
					<c:when test="${!empty requestScope.currentChap }">
						<tr>
							<td class="plusminus">
								<button type="button">목록으로</button>
							</td>
							<td colspan="2" class="title">
								<p class="title_real">제목이 있는 곳</p>
							</td>
							<td class="nextback">
								<c:if test="${requestScope.pageInfo.pageNo == 1 }">
									<button  class="nextbtn" disabled><</button>
								</c:if>
								<c:if test="${requestScope.pageInfo.pageNo > 1 }">
									<button  id="searchStartPage" class="nextbtn"><</button>
								</c:if>
								
								<c:if test="${ requestScope.pageInfo.pageNo == requestScope.pageInfo.maxPage }">
									<button class="backbtn" disabled>></button>
								</c:if> 
								<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
									<button id="searchNextPage" class="backbtn">></button>
								</c:if>
								</td>
						</tr>
					</c:when>
				</c:choose>
				<c:forEach var="perChapter" items="${requestScope.perChap }" >
					<div>
						 <td colspan="2" class="page">
						 <pre class="pagediv1">	
					 	<c:out value="${ perChapter.webNovPageContent }"></c:out> 
<%-- 						 <c:out value="${ perChapter.index}"> </c:out> --%>
	
                    	</pre>
                    	</td> 

					</div>
				</c:forEach>
				<tr>
					<td colspan="2" class="pageNum">
						<p class="page1Num_real">1pg</p>
					</td>
					<td colspan="2" class="pageNum">
						<p class="page2Num_real">2pg</p>
					</td>
				</tr>
			</table>
		</section>
<%-- 	<h1>${ perChapter.webNovNum.webNovNum}</h1>
	<h1>${ perChapter.webNovChapNum.webNovChapNum}</h1>  --%>
		
	</div>
	
	<script>
		
	const searchLink = "${ pageContext.servletContext.contextPath }/webnovel/chapList";
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
	} 
	
	</script>
</body>
</html>