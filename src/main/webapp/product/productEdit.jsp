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

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">
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

<div>
    <a href='${pageContext.request.contextPath}/product/productList'>Cancel</a>
</div>

<!-- Bootstrap core JavaScript-->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="../js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="../vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="../js/demo/chart-area-demo.js"></script>
<script src="../js/demo/chart-pie-demo.js"></script>
</body>
</html>
