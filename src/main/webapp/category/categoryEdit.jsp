<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/22/2020
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Category Edit</title>
</head>
<body>
<h1> Edit Category</h1>
<br>

<form action="categoryEdit" method="POST">

    <label>
        <label>
            Category Name:
        </label>
        <label>
            <input type="text" name="name" value="${requestScope.name}">
        </label>
    </label>
    <br/><br/>
    <label>
        <label>
            Category Description:
        </label>
        <label>
            <input type="text" name="desc" value="${requestScope.desc}">
        </label>
    </label>
    <br/><br/>
    <input type="submit" name="submitButton" value="Edit">
    <input type="hidden" name="id" value="${requestScope.id}">
</form>
</body>
</html>
