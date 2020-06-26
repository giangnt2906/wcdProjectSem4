<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/19/2020
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Category List</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
<h1>
    Category List
</h1>
<br>
<a href='${pageContext.request.contextPath}/category/categoryAdd'>Add New Category</a>
<br>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="item" items="${requestScope.categories}">
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.desc}</td>
            <th>
                <a href='${pageContext.request.contextPath}/category/categoryEdit?id=${item.id}'>Edit</a>
            </th>
            <th>
                <a href='${pageContext.request.contextPath}/category/categoryDelete?id=${item.id}'>Delete</a>
            </th>
        </tr>
    </c:forEach>

</table>
<br>
<a href='../index.jsp'>Back to Home</a>
</body>
</html>
