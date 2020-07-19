<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="google-site-verification" content="T5sgY-c1lYXiSsJuhJxbbnmUUvZ4EVD9g4A-5kHmjHw" />
    <title>최성현</title>


</head>
<body>
<header id="header">
    <div class="container">
        <div class="row">
            <div class="header">
                <div class="header_menu">
                    <form method="post" action="/user/loginform">
                    <c:if test="${user == null}">
                        <a href="/user/loginform">로그인</a>
                    </c:if>
                    <c:if test="${user != null }">
                        <div>
                            <c:forEach var="user" items="${user}">
                            <p> ${user.user_id}</p>
                                <a href="/user/logout">로그아웃</a>
                            </c:forEach>
                        </div>
                    </c:if>
                    </form>
                </div>
                <!-- //header_menu -->
                <div class="header_tit">
                    <h1>힘, 그리고 공포! 이게, 내 무기지!</h1><br>
                    <a href="https://kr.leagueoflegends.com/ko-kr/champions/urgot/">우르곳</a>
                </div>
                <!-- //header_tit -->
                <div class="header_icon">
                    <ul>
                        <li><a href="/plate/selectlist?id=java"><i class="fab fa-java" aria-hidden="true"></i><span>JAVA</span></a></li>
                        <li><a href="/plate/selectlist?id=go"><i class="fab fa-google" aria-hidden="true"></i><span>GO</span></a></li>
                        <li><a href="/plate/selectlist?id=kotlin"><i class="fab fa-android" aria-hidden="true"></i><span>KOTLIN</span></a></li>
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

                    </ol>
                </div>
                <div>
                    <h3>GO</h3>
                    <ol>
                        <li><a href="#">CSS 선택자</a></li>

                    </ol>
                </div>
                <div class="last">
                    <h3>KOTLIN</h3>
                    <ol>
                        <li><a href="#">웹 표준</a></li>

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
            <h2>"지식이 부족하기 때문에 발전 하는 개발자"</h2>
            <a href="/" class="btn">
                <i class="fas fa-chess-knight" aria-hidden="true"></i>
                <span class="ir_su">전체메뉴 보기</span>
            </a>
        </div>
    </div>
</article>
<script>

</script>
</body>
</html>
