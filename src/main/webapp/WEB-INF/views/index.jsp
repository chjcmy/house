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
    <meta name="description" content="반응형 사이트 따라하기">
    <meta name="keywords" content="반응형사이트, 웹퍼블리셔, 웹접근성, HTML5, webstoryboy, webs">
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

<header id="header">
    <div class="container">
        <div class="row">
            <div class="header">
                <div class="header_menu">
                    <a href="#">로그인</a>

                </div>
                <!-- //header_menu -->
                <div class="header_tit">
                    <h1>힘, 그리고 공포! 이게, 내 무기지!</h1><br>
                    <a href="https://kr.leagueoflegends.com/ko-kr/champions/urgot/">우르곳</a>
                </div>
                <!-- //header_tit -->
                <div class="header_icon">
                    <ul>
                        <li><a href="/board/list"><i class="fab fa-java" aria-hidden="true"></i><span>JAVA</span></a></li>
                        <li><a href="#"><i class="fab fa-google" aria-hidden="true"></i><span>GO</span></a></li>
                        <li><a href="#"><i class="fab fa-google-play" aria-hidden="true"></i><span>KOTLIN</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>

<nav id="nav">
    <div class="container">
        <div class="row">
            <div class="nav">
                <h2 class="ir_su">반응형 사이트 전체 메뉴</h2>
                <div>
                    <h3>JAVA</h3>
                    <ol>
                        <li><a href="#">HTML 태그(Tag)</a></li>
                        <li><a href="#">블록 요소/인라인 요소</a></li>
                        <li><a href="#">DTD 선언</a></li>
                        <li><a href="#">언어 속성 설정</a></li>
                        <li><a href="#">HTML &lt;title&gt;</a></li>
                        <li><a href="#">HTML &lt;meta&gt;</a></li>
                        <li><a href="#">특수문자</a></li>
                        <li><a href="#">하이퍼 링크</a></li>
                        <li><a href="#">HTML &lt;style&gt;</a></li>
                        <li><a href="#">HTML &lt;html&gt;</a></li>
                        <li><a href="#">HTML &lt;head&gt;</a></li>
                        <li><a href="#">HTML &lt;div&gt;</a></li>
                        <li><a href="#">HTML &lt;colgroup&gt;</a></li>
                        <li><a href="#">HTML &lt;caption&gt;</a></li>
                    </ol>
                </div>
                <div>
                    <h3>GO</h3>
                    <ol>
                        <li><a href="#">CSS 선택자</a></li>
                        <li><a href="#">CSS 단위</a></li>
                        <li><a href="#">CSS 색상</a></li>
                        <li><a href="#">CSS 선언 방법</a></li>
                        <li><a href="#">상대주소와 절대주소</a></li>
                        <li><a href="#">CSS float</a></li>
                        <li><a href="#">이미지 표현 방법</a></li>
                        <li><a href="#">이미지 스프라이트</a></li>
                        <li><a href="#">IR 효과</a></li>
                        <li><a href="#">이미지 최적화</a></li>
                        <li><a href="#">background-color</a></li>
                        <li><a href="#">border-style</a></li>
                        <li><a href="#">font-size</a></li>
                        <li><a href="#">text-align</a></li>
                    </ol>
                </div>
                <div class="last">
                    <h3>KOTLIN</h3>
                    <ol>
                        <li><a href="#">웹 표준</a></li>
                        <li><a href="#">웹 접근성</a></li>
                        <li><a href="#">W3C</a></li>
                        <li><a href="#">웹 접근성 연구소</a></li>
                        <li><a href="#">네이버 널리</a></li>
                        <li><a href="#">다음 다룸</a></li>
                        <li><a href="#">Webstandard</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</nav>
<!-- nav -->

<article id="title">
    <div class="container">
        <div class="title">
            <h2>"나는 우르곳이다"</h2>
            <a href="#" class="btn">
                <i class="fas fa-chess-knight" aria-hidden="true"></i>
                <span class="ir_su">전체메뉴 보기</span>
            </a>
        </div>
    </div>
</article>
<!-- //title -->

<main>
    <section id="contents">
        <div class="container">
            <h2 class="ir_su">반응형 사이트 컨텐츠</h2>
            <section id="cont_left">
                <!-- // -->
                <article class="column col1">
                    <h4 class="col_tit">Menu</h4>
                    <!-- 메뉴 -->
                    <div class="menu">
                        <ul>
                            <li><a href="#">JAVA <i class="fab fa-java" aria-hidden="true"></i></a></li>
                            <li><a href="#">GO <i class="fab fa-google" aria-hidden="true"></i></a></li>
                            <li><a href="#">KOTLIN <i class="fab fa-google-play" aria-hidden="true"></i></a></li>
                            <li><a href="#">HTML5 <i class="fab fa-html5" aria-hidden="true"></i></a></li>
                            <li><a href="#">CSS3 <i class="fab fa-css3-alt" aria-hidden="true"></i></a></li>
                            <li><a href="#">일상생활 <i class="fas fa-walking" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <!-- //메뉴 -->
                </article>

                <!-- // -->
                <article class="column col2">
                    <h4 class="col_tit">Notice</h4>
                    <p class="col_desc">게시판영역의 한줄 효과와 두줄 효과 게시판입니다</p>
                    <!-- 게시판 -->
                    <div class="notice1">
                        <h5>Notice1</h5>
                        <ul>
                            <li><a href="#">이줄은 한줄 효과입니다</a></li>
                            <li><a href="#">이줄은 한줄 효과입니다</a></li>
                            <li><a href="#">이줄은 한줄 효과입니다</a></li>
                            <li><a href="#">이줄은 한줄 효과입니다</a></li>
                        </ul>
                        <a href="#" class="more" title="더 보기">More<i class="fa fa-plus-circle" aria-hidden="true"></i></a>
                    </div>
                    <!-- //게시판 -->
                </article>
                <!-- //col2 -->

                <article class="column col3">
                    <h4 class="col_tit">Blog</h4>
                    <p class="col_desc">해상도에 따라 이미지를 다르게 표현하는 방법입니다.</p>
                    <!-- blog1-->
                    <div class="blog1">
                        <h5 class="ir_su">image1</h5>
                        <figure>
                            <img src="${pageContext.request.contextPath}/resources/img/blog1_@1.jpg" class="img-normal" alt="normal image">
                            <img src="${pageContext.request.contextPath}/resources/img/blog1_@2.jpg" class="img-retina" alt="retina image" width="100%">
                            <!--<img src="img/blog2_@1.jpg" srcset="img/blog2_@1.jpg 1x, img/blog2_@2.jpg 2x" alt="normal image"> -->
                            <figcaption>반응형 웹 사이트 이미지 글입니다. 반응형 웹 사이트 이미지 글입니다. 반응형 웹 사이트 이미지 글입니다. 반응형 웹 사이트 이미지 글입니다.</figcaption>
                        </figure>
                    </div>
                    <!-- //blog1 -->
                    <!-- blog2-->
                    <div class="blog2">
                        <h5 class="ir_su">image2</h5>
                        <figure>
                            <img src="${pageContext.request.contextPath}/resources/img/blog2_@1.jpg" srcset="${pageContext.request.contextPath}/resources/img/blog2_@1.jpg 1x, img/blog2_@2.jpg 2x" alt="normal image">
                            <figcaption>반응형 웹 사이트 이미지 글입니다. 반응형 웹 사이트 이미지 글입니다. 반응형 웹 사이트 이미지 글입니다. 반응형 웹 사이트 이미지 글입니다.</figcaption>
                        </figure>
                    </div>
                    <!-- //blog2 -->
                </article>
                <!-- //col3 -->
            </section>
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
            <section id="cont_right">
                <h3 class="ir_su">반응형 사이트 오른쪽 컨텐츠</h3>
                <article class="column col7">
                    <h4 class="col_tit">Title</h4>
                    <p class="col_desc">이 곳은 설명 부분입니다.</p>
                    <!-- -->

                    <!-- // -->
                </article>
                <!-- //col7 -->
                <article class="column col8">
                    <h4 class="col_tit">Title</h4>
                    <p class="col_desc">이 곳은 설명 부분입니다.</p>
                    <!-- -->

                    <!-- // -->
                </article>
                <!-- //col8 -->
                <article class="column col9">
                    <h4 class="col_tit">Title</h4>
                    <p class="col_desc">이 곳은 설명 부분입니다.</p>
                    <!-- -->

                    <!-- // -->
                </article>
                <!-- //col9 -->
            </section>
        </div>
    </section>
    <!-- //contents -->
</main>
<footer id="footer">
    <div class="container">
        <h2>반응형 사이트 푸터</h2>
    </div>
</footer>
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

