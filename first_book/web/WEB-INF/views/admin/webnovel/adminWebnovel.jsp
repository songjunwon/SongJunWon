<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="/firstbook/resources/css/admin/webnovel/adminWebnovelMain.css">
<link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">
</head>
<body>
    <div id="wrap">
        <div class="top_main">        
        <section class="sec1">
            <div class="admin_webnov web_whole_div">
                <div class="admin_webnov web_title">
                    <table class="admin_webnov web_title_tab"  >
                        <tr class="web_title_head">
                            <th class="introRadio"> </th>
                            <th class="introImg"> 이미지 </th>
                            <th class="introTitle"> 제목 </th>
                            <th class="introAuthor"> 작가 </th>
                            <th class="introPrice"> 연재요일 </th>
                            <th class="introDate"> 출판사 </th>
                            <th class="introSum"> 공개 여부</th>
                        </tr>
                    </table>
                </div>
                <div class="admin_webnov web_list">
                    <table class="admin_webnov web_list_tab" >
                    	<c:forEach var="adminWebnovel" items="${ requestScope.adminWebNovelList }">
                        <tr id="webList">
                            <td class="webradio"> <input type="radio" name="checkOrNot"> </td>
                            <td class="webimg"> <img class="webImgList" src="${ adminWebnovel.webNovImgLocation }"></td>
                            <td class="webtitle"> ${ adminWebnovel.webNovTitle } </td>
                            <td class="webauthor"> ${ adminWebnovel.webNovAuthor } </td>
                            <td class="webprice"> ${ adminWebnovel.dayOfWeek } </td>
                            <td class="webdate"> ${ adminWebnovel.webNovPublisher } </td>
                            <td class="websum"> ${ adminWebnovel.webNovOpenOrClose } </td>
                        </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>        
        </section>
        <section class="sec2">
            <div class="sec2 search_div">
                <div class="sec2 search_div search_div_real">
                    작품조회
                </div> 
                <table class="sec2 search_div_title" >
                    <tr>
                        <td>
                            <form>
                                <label for="">제목 : </label>
                                <input type="text"> <br><br>
                                <label for="">작가 : </label>
                                <input type="text"> <br><br>
                            </form>
                        </td>
                    </tr>
                </table>
                <div class="sec2 search_btn_div">
                    <button class="searchBtn">조회</button>
                </div>               
            </div>
        </section>
        <section class="sec3">
            <div class="enrollModifyDeletePosition">
                <br><br>
                <button class="enrollModifyDelete" id="registNewNovel">작품 등록</button>
                <br><br>
                <button class="enrollModifyDelete">수정</button>
                <br><br>
                <button class="enrollModifyDelete">삭제</button>
            </div>
        </section>

    </div>
    </div>    

<script>
		if(document.getElementById("registNewNovel")) {
			const $registNewNovel = document.getElementById("registNewNovel");
			$registNewNovel.onclick = function() {
				location.href = "/firstbook/admin/novel/regist";
			}
		}

</script>
</body>
</html>









