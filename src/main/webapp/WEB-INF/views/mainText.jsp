<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>


<head>
    <meta charset="utf-8">
    <title>List Customers</title>
    <!-- style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?after">
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
                <c:forEach var="tempplates" items="${mainplate}">
                <article class="column col4">
                    <h4 class="col_tit">${tempplates.kind}</h4>
                    <p class="col_desc">${tempplates.kind_think}</p>

                    <div id="container">

                        <div class="container">

                            <table class="maintext">
                                <thead>
                                <tr>
                                    <th scope="cols">타이틀</th>
                                    <th scope="cols">${tempplates.intro}</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row" class="even">날짜</th>
                                    <td class="even">${tempplates.date}</td>
                                </tr>
                                <tr>
                                    <th scope="row">내용</th>
                                    <td>${tempplates.main_text}</td>
                                </tr>
                                </c:forEach>
                                <tr>
                                    <th scope="row">사진</th>
                                    <c:forEach var="pic" items="${pic}">
                                        <td>
                                            <img src="${pic.picpath}" width="12" height="11">
                                        </td>
                                    </c:forEach>
                                </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </article>

            </section>
            <jsp:include page="part/right_side.jsp"/>
        </div>
    </section>
    <!-- //contents -->
</main>
<jsp:include page="part/footer.jsp"/>
<!-- //footer -->

</body>

</html>