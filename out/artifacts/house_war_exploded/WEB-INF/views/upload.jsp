<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: chjcm
  Date: 2020-07-10
  Time: 오후 1:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>파일 업로드 + 추가 정보 by @ModelAttribute</h3>
<form action="singleFileUploadWithAdditionalData" method="post" enctype="multipart/form-data">
    Creator:<br>
    <input type="text" name="creator">
    <br>
    CallbackUrl:<br>
    <input type="text" name="callbackUrl">
    <br>
    <input type="file" name="mediaFile" multiple="multiple">
    <br><br>
    <button type="submit">Upload</button>
</form>


<span style="color: red; font-size: 14px;">${msg}</span>

</body>
</html>
