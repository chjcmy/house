<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min_1.12.4.js"></script>
    <script>

       window.onload = function leftmenu() {
            $.ajax({
                type:'GET',
                url : "<c:url value='/leftnewlist'/>",
                dataType : "json",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                success : function(data){

                    var html = "";

                    if(data.length > 0){

                        for(i=0; i<data.length; i++){
                            html += "<li><a href='/plate/leftselect?id=" + data[i].Id + "'>" + data[i].intro + "</a></li>";
                        }

                    } else {

                        html += "<div>";


                    }

                    $("#commentList").html(html);
                    console.log("submit")
                },
                error:function(request,status,error){

                }

            });
        }

    </script>
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
                <li><a href="/plate/selectlist?id=linux">LINUX<i class="fab fa-linux"></i></a></li>
                <li><a href="/plate/selectlist?id=java">JAVA <i class="fab fa-java" aria-hidden="true"></i></a></li>
                <li><a href="/plate/selectlist?id=go">GO <i class="fab fa-google" aria-hidden="true"></i></a></li>
                <li><a href="/plate/selectlist?id=kotlin">KOTLIN <i class="fab fa-android" aria-hidden="true"></i></a></li>
                <li><a href="/plate/selectlist?id=db">DB <i class="fas fa-database" aria-hidden="true"></i></a></li>
                <li><a href="/plate/selectlist?id=일상생활">일상생활 <i class="fas fa-walking" aria-hidden="true"></i></a></li>
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
               <div value = "leftmenu" id="commentList">

               </div>
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
