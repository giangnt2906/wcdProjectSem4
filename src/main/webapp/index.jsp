<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/19/2020
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
</head>
<body>
<jsp:include page="views/_menu.jsp"/>
    <h1>
        Index
    </h1>
    <a href="${pageContext.request.contextPath}/category/categoryList">View all category</a>
    <br>
    <a href="${pageContext.request.contextPath}/product/productList">View all product</a>
</body>
</html>
