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
                <li><a href="/plate/list">ALL <i class="fas fa-archive" aria-hidden="true"></i></a></li>
                <li><a href="/plate/selectlist?id=java">JAVA <i class="fab fa-java" aria-hidden="true"></i></a></li>
                <li><a href="/plate/selectlist?id=go">GO <i class="fab fa-google" aria-hidden="true"></i></a></li>
                <li><a href="/plate/selectlist?id=kotlin">KOTLIN <i class="fab fa-android" aria-hidden="true"></i></a></li>
                <li><a href="/plate/selectlist?id=java">일상생활 <i class="fas fa-walking" aria-hidden="true"></i></a></li>
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
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
            <a href="#" class="more" title="더 보기">More<i class="fa fa-plus-circle" aria-hidden="true"></i></a>
        </div>
        <!-- //게시판 -->
    </article>
    <!-- //col2 -->

    <article class="column col3">
        <h4 class="col_tit">Blog</h4>
        <p class="col_desc">생각중.....</p>


    </article>
    <!-- //col3 -->
</section>
</body>
</html>
