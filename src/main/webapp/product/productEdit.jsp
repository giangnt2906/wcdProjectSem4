<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/22/2020
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    HashMap<String, ArrayList<String>> errors = (HashMap<String, ArrayList<String>>) request.getAttribute("errors");
%>
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
    <style>
        .error {
            color: red;
            font-size: small;
        }
    </style>
</head>
<body>
<h1>Edit Product</h1>
<br>
<form action="productEdit" method="POST">

    <div>
        <label>
            Name:
        </label>
        <div>
            <input type="text" name="name" value="${requestScope.name}">
        </div>
        <div>
            <%
                if (errors != null && errors.containsKey("name")) {
            %>
            <p class="error">* <%=errors.get("name").get(0)%>
            </p>
            <%
                }
            %>
        </div>
    </div>
    <br/><br/>
    <div>
        <label>
            Price:
        </label>
        <div>
            <input type="text" name="price" value="${requestScope.price}">
        </div>
        <div>
            <%
                if (errors != null && errors.containsKey("price")) {
            %>
            <p class="error">* <%=errors.get("price").get(0)%>
            </p>
            <%
                }
            %>
        </div>
    </div>
    <br/><br/>
    <div>
        <label>
            Quantity:
        </label>
        <div>
            <input type="text" name="quantity" value="${requestScope.quantity}">
        </div>
        <div>
            <%
                if (errors != null && errors.containsKey("quantity")) {
            %>
            <p class="error">* <%=errors.get("quantity").get(0)%>
            </p>
            <%
                }
            %>
        </div>
    </div>
    <br/><br/>
    <div>
        <label>
            Images:
        </label>
        <div id="upload_widget" class="btn btn-primary">Upload files</div>
        <input type="hidden" id="strImageUrl" name="strImageUrl" />
        <div class="images"></div>
    </div>
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
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
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
<script>
    $('#product-form').validate({
        rules: {
            name: {
                required: true,
                pattern: '[a-zsA-Z]+',
                minLength: 5,
                maxLength: 10
            },
            price: {
                required: true,
                min: 1,
                max: 1800
            },
            quantity: {
                required: true,
                min: 8,
                max: 18
            }
        },
        messages: {
            name: {
                required: 'Name is required!',
                pattern: 'Invalid format'
            },
            price: {
                required: 'Price is required!',
                min: 'Price must be more than 1',
                max: 'Price must be less than 1800'
            },
            quantity: {
                required: 'Quantity is required!',
                min: 'Quantity must be more than 8',
                max: 'Quantity must be less than 18'
            }
        }
    })
</script>
</body>
</html>
