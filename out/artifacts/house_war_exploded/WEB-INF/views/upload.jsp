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
<h3>단일 파일 업로드</h3>
<form action="singleFileUpload" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td>Select File</td>
            <td><input type="file" name="mediaFile"></td>
            <td>
                <button type="submit">Upload</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
