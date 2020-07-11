<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<body>

<div id="container">
    <h3>Save Plate</h3>

    <form:form action="save" modelAttribute="plate" method="post" enctype="multipart/form-data">
        <form:hidden path="id" />

        <table>
            <tbody>
            <tr>
                <td><label>주제</label></td>
                <td><form:input path="kind" /></td>
            </tr>
            <tr>
                <td><label>소주제</label></td>
                <td><form:input path="kind_think"/></td>
            </tr>
            <tr>
                <td><label>서문</label></td>
                <td><form:input path="intro"/></td>
            </tr>
            <tr>
                <td><label>내용</label></td>
                <td><form:input path="main_text"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"/></td>
            </tr>
            <tr>
            <input type="file" name="mediaFile" multiple="multiple">
            </tr>
            </tbody>
        </table>
    </form:form>

    <p>
        <a href="/" >Back to home</a>
    </p>





</div>

</body>
</html>
