<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">


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
                <article class="column col4">
                    <h4 class="col_tit">Menu</h4>
                    <p class="col_desc">보고 싶은걸 보자</p>

                    <div id="container">

                        <div id="content">
                            <c:if test="${user != null }">
                                <div>
                                    <c:forEach var="user" items="${user}">
                                        <input type="button" value="Add plate"
                                               onclick="location.href='add'; return false;"/>
                                    </c:forEach>
                                </div>
                            </c:if>

                            <table class="plate-table">
                                <colgroup>
                                    <col width="5%">
                                    <col width="10%">
                                    <col width="10%">
                                    <col width="25%">
                                    <col width="10%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th scope="cols">no</th>
                                    <th scope="cols">주제</th>
                                    <th scope="cols">소주제</th>
                                    <th scope="cols">타이틀</th>
                                    <th scope="cols">날짜</th>
                                    <div>
                                        <c:forEach var="user" items="${user}">
                                            <th scope="cols">업데이트 | 삭제</th>
                                        </c:forEach>
                                    </div>
                                </tr>
                                <thead>
                                <!-- loop over and print our customers -->
                                <c:forEach var="tempplates" items="${plates}">

                                <c:url var="updateLink" value="/plate/update">
                                    <c:param name="plateId" value="${tempplates.id}"/>
                                </c:url>
                                <c:url var="selectLink" value="/plate/select">
                                    <c:param name="plateId" value="${tempplates.id}"/>
                                </c:url>
                                <c:url var="deleteLink" value="/plate/delete">
                                    <c:param name="plateId" value="${tempplates.id}"/>
                                </c:url>
                                <tbody>
                                <tr>
                                    <td scope="row"> ${tempplates.id} </td>
                                    <td > ${tempplates.kind} </td>
                                    <td> ${tempplates.kind_think} </td>
                                    <td><a href="${selectLink}">${tempplates.intro} </a></td>
                                    <td> ${tempplates.date} </td>
                                    <c:if test="${user != null }">
                                        <div>
                                            <c:forEach var="user" items="${user}">
                                                <td>
                                                    <a href="${updateLink}">update</a>
                                                    |
                                                    <a href="${deleteLink}">delete</a>
                                                </td>
                                            </c:forEach>
                                        </div>
                                    </c:if>
                                </tr>
                                </tbody>
                                </c:forEach>

                            </table>
                            <div id="pagination">

                                <c:url value="/plate/list" var="prev">
                                    <c:param name="page" value="${page-1}"/>
                                </c:url>
                                <c:if test="${page > 1}">
                                    <a href="<c:out value="${prev}" />" class="pn prev">Prev</a>
                                </c:if>

                                <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                                    <c:choose>
                                        <c:when test="${page == i.index}">
                                            <span>${i.index}</span>
                                        </c:when>
                                        <c:otherwise>
                                            <c:url value="/plate/list" var="url">
                                                <c:param name="page" value="${i.index}"/>
                                            </c:url>
                                            <a href='<c:out value="${url}" />'>${i.index}</a>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <c:url value="/plate/list" var="next">
                                    <c:param name="page" value="${page + 1}"/>
                                </c:url>
                                <c:if test="${page + 1 <= maxPages}">
                                    <a href='<c:out value="${next}" />' class="pn next">Next</a>
                                </c:if>
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