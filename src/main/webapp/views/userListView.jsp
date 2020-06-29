<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/29/2020
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List User</title>
</head>
<body>
<h1 class="h3 mb-2 text-gray-800">User Tables</h1>
<p class="mb-4">Show all users with roles</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>User Name</th>
                    <th>Gender</th>
                    <th>Password</th>
                    <th>Roles</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>User Name</th>
                    <th>Gender</th>
                    <th>Password</th>
                    <th>Roles</th>
                </tr>
                </tfoot>
                <tbody>
                <c:forEach var="item" items="${requestScope.users}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.userName}</td>
                        <td>${item.gender}</td>
                        <td>${item.password}</td>
                        <td>${item.roles}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
