<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/19/2020
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category</title>
</head>
<body>
<h1>Create Category</h1>
<form method="post" action="categoryAdd">
    <table align="center">
        <tr>
            <td>Name: </td>
            <td><label>
                <input type="text" name="name">
            </label></td>
        </tr>
        <tr>
            <td>Description: </td>
            <td><label>
                <input type="text" name="desc">
            </label></td>
        </tr>
        <tr>
            <td></td>
            <td><input type='submit' value="Add Category" style="width: 100px; margin-top: 10px"></td>
        </tr>
    </table>
</form>
</body>
</html>
