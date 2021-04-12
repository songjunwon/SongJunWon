<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FirstBook</title>
<link rel="stylesheet" href="/firstbook/resources/css/contest/contest.css">
<link rel="stylesheet" href="/firstbook/resources/css/contest/reset.css">
</head>
<body>

${requestScope.novTitle }
    <div id="wrap">
	<%-- 	<jsp:include page="../common/header_nav.jsp"></jsp:include> --%>
        
        <div class="size_box"></div>
        <section>
            <div class="section">

            </div>
        </section>
        <aside>
            <div class="section2">
                <div class="tupyo">투<br>표<br>하<br>기</div>
                <div class="work_tupyo">
                    <div class="work_row1">
                    <c:forEach items="${ requestScope.contestList }" var="contest">
					 <div class="work">
						<img src="/firstbook/resources/image/contest/book_cover.png" width="125px">
						<div class="work_title"><c:out value="${ contest.novTitle }"/></div>
						
						<a href="${ pageContext.servletContext.contextPath }/contest/voting">
						<button class="work_button" type="button">투표</button></a>
									
											
					</div>
					</c:forEach>
                    </div>

                </div>
            </div>
        </aside>
       
            
        

    </div>

    <div class="size_box"></div>
	<jsp:include page="../common/footer_member.jsp"/>
</body>
</html>