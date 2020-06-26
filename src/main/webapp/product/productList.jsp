<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/22/2020
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
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
    List of Product
</h1>
<br>
<a href='${pageContext.request.contextPath}/product/productAdd'>Add New Product</a>
<br>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Category</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="item" items="${requestScope.products}" >
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.price}</td>
            <td>${item.quantity}</td>
            <td>${item.categoryName}</td>
            <th>
                <a href='${pageContext.request.contextPath}/product/productEdit?id=${item.id}'>Edit</a>
            </th>
            <th>
                <a href='${pageContext.request.contextPath}/product/productDelete?id=${item.id}'>Delete</a>
            </th>
        </tr>
    </c:forEach>

</table>
<br>
<a href='../index.jsp'>Back to Home</a>
</body>
</html>
