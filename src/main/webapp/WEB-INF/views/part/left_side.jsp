<%--
  Created by IntelliJ IDEA.
  User: chjcm
  Date: 2020-07-02
  Time: 오후 4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
</body>
</html>
