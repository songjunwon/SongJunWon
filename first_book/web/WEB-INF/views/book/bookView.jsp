<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>����������</title>

    <!-- reset.css style.css -->
    <link rel="stylesheet" href="/firstbook/resources/css/common/reset.css">
    <link rel="stylesheet" href="/firstbook/resources/css/book/book_sale.css">
</head>

<body>
       <jsp:include page="../common/header.jsp"></jsp:include>
    <div id="wrap">
        <div class="size_box"></div>
        <div class="main_box">
            <div class="introduction">
                <div class="book_img">
                    <img src="/firstbook/resources/image/book/book_cover.png">
                </div>
                <div class="book_name">
                    <div class="book_introduction">

                        <div class="free_shipping">������</div>
                        <div class="book_title">�Ǵ��� ��� �ʹ�</div>
                        <div class="book_Information">Hajime Isayama ���� | First Book | 2021�� 03�� 08�� �Ⱓ</div>
                    </div>

                    <div class="book_price">

                        <div class="price">���� : 5,000��</div>
                        <div class="sale_price">�ǸŰ� : </div>
                        <div class="font_red">4,500��</div>

                    </div>
                    <div class="book_announcement">
                        <div class="shipping">
                            <span>��ۺ� : ������ ���� ��ǰ ��ۺ� �ȳ�</span><br>
                            <span>������� : �û������ �ʰ� ��۵� ���� �ֽ��ϴ�</span><br>
                            <span>���� �ֹ��ϸ� ����(20��,��) ���� ���� ������� �ȳ�</span><br>
                            <span>�ٷε帲 : ���ͳ����� �ֹ��ϰ� ���忡�� ���� ����</span>
                        </div>
                        <button type="submit">�����ϱ�</button>
                        <button type="submit">���ϱ�</button>
                    </div>
                </div>
                <div class="event_banaer">
                    <div class="banner_img">�̺�Ʈ ��� �κ�</div>
                </div>
            </div>

        </div>

        <div class="book_content">
            <div class="book_content_bold">å�Ұ�</div>
            <hr>
            �� ����� �쿬��<br>
            ����� ���� �� �� �Ѹ���<br>
            �� ������ �� �شٴ� ��Ȥ���� ���<br>
            ���� ���� �ɾ� �־���<br>
            �� �� �ȵ� �� ���<br>
            ������ �� ���� ���� �ӻ迩<br>
            ������ �� �ٴ� ���� ���̶��<br>
            ��⸦ �� �� �� �� �־�<br>
            �� ���� �귯���� �ð�<br>
            �̴�� ���� ���� ���ݾ�<br>
            �Բ� �����ϴ°ž�<br>
            �ʿ� �� �� ���� ���<br>
            �츮�� ����� ���� ��Ƽ�<br>
            �ܷο�� �η�����<br>
            �츱 ����� �Ͽ���<br>
            ���� ������ �ʾ�<br>
            ������ ������ ����� �ٴٿ�<br>
            ����� �츱 �θ��ϱ�<br>
            �ż� �ٶ� ���� �ĵ���<br>
            �츮 �ձ� ���Ƽ���<br>
            ���� �η��� �ʾ�<br>
            ������ ������ ������ �÷õ�<br>
            ���� ���� ���� �ž�<br>
            �� �� �ȵ� �� ���<br>
            ������ �� ���� ���� �ӻ迩<br>
            ������ �� �ٴ� ���� ���̶��<br>
            ��⸦ �� �� �� �� �־�<br>

        </div>
        <div class="size_box"></div>
    </div>
        <jsp:include page="../common/footer.jsp"/>

</body>

</html>