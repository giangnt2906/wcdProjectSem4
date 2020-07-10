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

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Custom fonts for this template-->
    <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<h1>
    List of Product
</h1>
<br>
<a href='${pageContext.request.contextPath}/backend/product/productAdd'>Add New Product</a>
<br>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Category</th>
        <th>
            Product Image
        </th>
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
            <td>
                <c:forEach var="url" items="${item.image_urls}" >
                    <div>
                        <img src="${url}" alt="Image" width="200" height="300">
                    </div>
                </c:forEach>

            </td>
            <th>
                <a href='${pageContext.request.contextPath}/backend/product/productEdit?id=${item.id}'>Edit</a>
            </th>
            <th>
                <a href='${pageContext.request.contextPath}/backend/product/productDelete?id=${item.id}'>Delete</a>
            </th>
        </tr>
    </c:forEach>

</table>
<br>
<a href='../../index.jsp'>Back to Home</a>

<!-- Bootstrap core JavaScript-->
<script src="../../vendor/jquery/jquery.min.js"></script>
<script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="../../js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="../../vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="../../js/demo/chart-area-demo.js"></script>
<script src="../../js/demo/chart-pie-demo.js"></script>
</body>
</html>
