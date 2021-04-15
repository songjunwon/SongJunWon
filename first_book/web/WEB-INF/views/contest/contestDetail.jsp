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
<link rel="stylesheet" href="/firstbook/resources/css/contest/contestDetail.css">
<link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">

</head>
<body>
<div id="wrap">
<jsp:include page="../common/header.jsp"/>
<div class="size_box"></div>
    <section>
        <div class="section1">
            <div class="section1_content">
                <div class="section1_content_left">
                    <img src="/firstbook/resources/image/contest/book_cover.png" alt="" height="350px">

                </div>
                <div class="section1_content_right">
                    <div class="font section1_content_right_first">
                        <c:out value="${ requestScope.contestlList[0].novTitle }" />
                    </div>
                    <div class="font section1_content_right_second ">
                        판타지 15세 이용가<br>
                        작가: 고지라군<br>
                        #이종족#마왕#모험#개그#판타지
                    </div>
                    <div class="font section1_content_right_third">
                        작품소개
                    </div>
                    <div class="font section1_content_right_fourth">
                        <c:out value="${ requestScope.contestlList[0].novInfo }" />
                    </div>
                    <div class="font section1_content_right_five">
                        <button type="button" class="firstBtn">첫화보기</button>
                        <button type="button" class="firstBtn" id="voting">투표하기</button>
                        <button type="button" class="secondBtn">♥</button>
                    </div>

                </div>
            </div>
        </div>

    </section>
    <section>
        <div class="font section2_title">
            &nbsp &nbsp &nbsp매주 화요일 연재
        </div>
        <div class="section2">
            <div class="section2_space"></div>
            <div class="font section2_content">
                <div class="section2_content_img">
                    <img src="/firstbook/resources/image/contest/book_cover.png" alt="" width="160px">
                </div>
                <div class="section2_content_main">
                    프롤로그<br>
                    14.08.19
                </div>
                <div class="section2_content_bt">
                    <button type="button" class="section2_content_btn">무료보기</button>
                </div>
            </div>
            <div class="section2_space"></div>

            <!-- 2번쨰 -->
            <div class="font section2_content">
                <div class="section2_content_img">
                    <img src="/firstbook/resources/image/contest/book_cover.png" alt="" width="160px">
                </div>
                <div class="section2_content_main">
                    프롤로그<br>
                    14.08.19
                </div>
                <div class="section2_content_bt">
                    <button type="button" class="section2_content_btn">무료보기</button>
                </div>
            </div>
            <div class="section2_space"></div>

            <!-- 3번째 -->
            <div class="font section2_content">
                <div class="section2_content_img">
                    <img src="/firstbook/resources/image/contest/book_cover.png" alt="" width="160px">
                </div>
                <div class="section2_content_main">
                    프롤로그<br>
                    14.08.19
                </div>
                <div class="section2_content_bt">
                    <button type="button" class="section2_content_btn">무료보기</button>
                </div>
            </div>
            <div class="section2_space"></div>
        </div>

    </section>
    <section>
        <div class="section3">
            <div class="font section3_title">
                &nbsp &nbsp &nbsp댓글
            </div>
            <div class="section3_writing">

                <!-- 댓글 등록 -->
                <div class="section3_writing_box">
                    <textarea name="댓글달기" class="section3_writing_text" rows="6"></textarea>
                </div>
                <div class="section3_writing_button">
                    <button type="button" class="button">등록하기</button>
                </div>

            </div>
        </div>

        <div class="section3_space"></div>

        <!-- 댓글 현황 보기 -->
        <div class="section3_writing_view">
            <div class="section3_writing_view_first">
                <div class="section3_nickname">여행을 가본다</div>
                <div class="section3_time">1분전</div>
            </div>
            <div class="section3_content">난 다이아 급이라구</div>
        </div>
        <!-- 댓글 현황 보기 -->
        <div class="section3_writing_view">
            <div class="section3_writing_view_first">
                <div class="section3_nickname">여행을 가본다</div>
                <div class="section3_time">1분전</div>
            </div>
            <div class="section3_content">난 다이아 급이라구</div>
        </div>
    </section>
</div>
<!-- <script>
		$("#voting").click(function(){
			const competNum = $(this).find("label").text();	// 사진 게시글 번호
			/* console.log(no); */
			location.href="${ pageContext.servletContext.contextPath }/contest/voting?competNum=" + competNum;
		});
</script> -->
</body>
</html>