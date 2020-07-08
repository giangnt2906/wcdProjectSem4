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
    <link href="../css/imageStyle.css" rel="stylesheet">
</head>
<body>
<h1>
    Add new Product
</h1>
<form method="post" action="productAdd" id="addProductForm">
    <table align="center">
        <tr>
            <td>Product Name:</td>
            <td><label>
                <input type="text" name="name" value="Product" required="required">
            </label></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><label>
                <input type="text" name="price" value="1000">
            </label></td>
        </tr>
        <tr>
            <td>Quantity:</td>
            <td>
                <label>
                    <input type="text" name="quantity" value="10">
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <label for="categoryId">Category:</label>
            </td>
            <td>
                <select id="categoryId" name="categoryId">
                    <c:forEach var="item" items="${requestScope.categoryNames}">
                        <option value="${item.id}">${item.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                Photo of Product:
            </td>
            <td>
                <div id="upload_widget" class="btn btn-primary">Upload files</div>
                <label for="strImageUrl"></label><input type="text" id="strImageUrl" name="strImageUrl" />
                <div class="images"></div>
            </td>
        </tr>
        <tr>
            <td><input type="submit" name="submitButton" value="Add Product"></td>
            <td><input type="reset" onclick="resetFunction()" value="Clear" /></td>
        </tr>
    </table>
</form>

<script>
    function resetFunction() {
        document.getElementById("addProductForm").reset();
    }
</script>

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
<script src="https://widget.cloudinary.com/v2.0/global/all.js" type="text/javascript"></script>
<script src="../js/imageScripts.js"></script>
</body>
</html>
