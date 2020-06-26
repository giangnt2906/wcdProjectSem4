<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/22/2020
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h1>
    Add new Product
</h1>
<form method="POST" action="productAdd">
    <label>
        <label>
            Name:
        </label>
        <label>
            <input type="text" name="name" value="Name">
        </label>
    </label>
    <br/><br/>
    <label>
        <label>
            Price:
        </label>
        <label>
            <input type="text" name="price" value="1000">
        </label>
    </label>
    <br/><br/>
    <label>
        <label>
            Quantity:
        </label>
        <label>
            <input type="text" name="quantity" value="10">
        </label>
    </label>
    <br/><br/>
    <label for="categoryId">Category:</label>
    <br/><br/>
    <select id="categoryId" name="categoryId">
        <c:forEach var="item" items="${requestScope.categoryNames}">
            <option value="${item.id}">${item.name}</option>
        </c:forEach>
    </select>
    <br/><br/>
    <input type="submit" name="submitButton" value="Add Product">
</form>
</body>
</html>
