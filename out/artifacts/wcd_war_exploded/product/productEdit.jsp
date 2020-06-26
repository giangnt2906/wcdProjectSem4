<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/22/2020
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product Edit</title>
</head>
<body>
<h1>Edit Product</h1>
<br>
<form action="productEdit" method="POST">

    <label>
        <label>
            Name:
        </label>
        <label>
            <input type="text" name="name" value="${requestScope.name}">
        </label>
    </label>
    <br/><br/>
    <label>
        <label>
            Price:
        </label>
        <label>
            <input type="text" name="price" value="${requestScope.price}">
        </label>
    </label>
    <br/><br/>
    <label>
        <label>
            Quantity:
        </label>
        <label>
            <input type="text" name="quantity" value="${requestScope.quantity}">
        </label>
    </label>
    <br/><br/>
    <label for="categoryId">Category:</label>
    <select id="categoryId" name="categoryId">
        <c:forEach var="item" items="${requestScope.categoryNames}">
            <option value="${item.id}">${item.name}</option>
        </c:forEach>
    </select>
    <br/><br/>
    <input type="submit" name="submitButton" value="Edit">
    <input type="hidden" name="id" value="${requestScope.id}">
</form>
</body>
</html>
