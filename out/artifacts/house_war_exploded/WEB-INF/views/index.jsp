<%--
  Created by IntelliJ IDEA.
  User: chjcm
  Date: 2020-06-29
  Time: 오전 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="author" content="webstoryboy">
    <meta name="description" content="우르곳은 제왕">
    <meta name="keywords" content="반응형사이트, 자바, 손흥민, 블랙핑크, 코틀린, 고, go, kotlin, spring, spring mvc, webs">
    <title>반응형 사이트 만들기 : 아웃 라이너</title>

    <!-- style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/slick.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/lightgallery.css">

    <!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resourcesicon/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resourcesicon/favicon-152.png">
    <link rel="icon" href="path/to/favicon.png">
    <link rel="icon" href="${pageContext.request.contextPath}/resourcesicon/favicon-16.png" sizes="16x16">
    <link rel="icon" href="${pageContext.request.contextPath}/resourcesicon/favicon-32.png" sizes="32x32">
    <link rel="icon" href="${pageContext.request.contextPath}/resourcesicon/favicon-48.png" sizes="48x48">
    <link rel="icon" href="${pageContext.request.contextPath}/resourcesicon/favicon-64.png" sizes="64x64">
    <link rel="icon" href="${pageContext.request.contextPath}/resourcesicon/favicon-128.png" sizes="128x128">
    <script src="https://kit.fontawesome.com/f4238cc675.js" crossorigin="anonymous"></script>
    <!-- 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abel&display=swap" rel="stylesheet">

    <!-- HTLM5shiv ie6~8 -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/resources/js/html5shiv.min.js"></script>
    <script type="text/javascript">
        alert("현재 당신이 보는 브라우저는 지원하지 않습니다. 최신 브라우저로 업데이트해주세요!");
    </script>
    <![endif]-->
    <audio id='audio_play' src='./sound/'></audio>
    <script type="text/javascript">
        function play() {
            var audio = document.getElementById('audio_play');
            if (audio.paused) {
                audio.play();
            } else {
                audio.pause();
                audio.currentTime = 0
            }
        }
    </script>
</head>

<body>

<jsp:include page="part/header.jsp"></jsp:include>

<main>
    <section id="contents">
        <div class="container">
            <h2 class="ir_su">반응형 사이트 컨텐츠</h2>
            <jsp:include page="part/left_side.jsp"></jsp:include>
            <section id="cont_center">
                <h3 class="ir_su">반응형 사이트 가운데 컨텐츠</h3>
                <article class="column col4">
                    <h4 class="col_tit">Slick Slider</h4>
                    <p class="col_desc">slick.js를 이용한 이미지 슬라이드 효과입니다.</p>
                    <!-- 이미지 슬라이드 -->
                    <div class="slider">
                        <div>
                            <figure>
                                <img src="${pageContext.request.contextPath}/resources/img/slider001.jpg" alt="이미지1">
                                <figcaption><em>Responsive Site1</em><span>슬라이드 플러그인을 이용한 반응형 이미지 슬라이드 입니다.</span></figcaption>
                            </figure>
                        </div>
                        <div>
                            <figure>
                                <img src="${pageContext.request.contextPath}/resources/img/slider001.jpg" alt="이미지2">
                                <figcaption><em>Responsive Site2</em><span>슬라이드 플러그인을 이용한 반응형 이미지 슬라이드 입니다.</span></figcaption>
                            </figure>
                        </div>
                        <div>
                            <figure>
                                <img src="${pageContext.request.contextPath}/resources/img/slider001.jpg" alt="이미지3">
                                <figcaption><em>Responsive Site3</em><span>슬라이드 플러그인을 이용한 반응형 이미지 슬라이드 입니다.</span></figcaption>
                            </figure>
                        </div>
                    </div>
                    <!-- //이미지 슬라이드 -->
                </article>
                <!-- //col4 -->
                <article class="column col5">
                    <h4 class="col_tit">Blend Effect</h4>
                    <p class="col_desc">Background-blend-mode와 mix-blend-mode</p>
                    <!-- lightbox -->
                    <div class="lightbox square clearfix">
                        <a href="${pageContext.request.contextPath}/resources/img/light01_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light01.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light02_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light02.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light03_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light03.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light04_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light04.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light05_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light05.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light06_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light06.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light07_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light07.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light08_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light08.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light09_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light09.jpg" alt="이미지"></a>
                        <a href="${pageContext.request.contextPath}/resources/img/light10_s.jpg"><img src="${pageContext.request.contextPath}/resources/img/light10.jpg" alt="이미지"></a>
                    </div>
                    <!-- // -->
                </article>
                <!-- //col5 -->
                <article class="column col6">
                    <h4 class="col_tit">Title</h4>
                    <p class="col_desc">이 곳은 설명 부분입니다.</p>
                    <!-- -->

                    <!-- // -->
                </article>
                <!-- //col6 -->
            </section>
           <jsp:include page="part/right_side.jsp" />
        </div>
    </section>
    <!-- //contents -->
</main>
<jsp:include page="part/footer.jsp" />
<!-- //footer -->

<!-- JavaScript Libraries -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min_1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/modernizr-custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/lightgallery.min.js"></script>
<script>
    //라이트 박스
    $(".lightbox").lightGallery({

    });
    //이미지 슬라이더
    $(".slider").slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: true,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    autoplay: false,
                }
            }
        ]
    });
</script>
</body></html>

