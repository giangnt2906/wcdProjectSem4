<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/29/2020
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New User</title>
</head>
<body>

<h3>Create New User</h3>
<div class="p-5">
    <div class="text-center">
        <h1 class="h4 text-gray-900 mb-4">Create an User!</h1>
    </div>
    <form class="user" method="POST" action="userAdd">
        <div class="form-group">
            <label for="exampleInputEmail"></label><input type="email" name="username" class="form-control form-control-user" id="exampleInputEmail" placeholder="Your User Name">
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="exampleFirstName"></label><input type="text" name="gender" class="form-control form-control-user" id="exampleFirstName" placeholder="Your Gender">
            </div>
            <div class="col-sm-6">
                <label for="exampleLastName"></label><input type="text" name="roles" class="form-control form-control-user" id="exampleLastName" placeholder="Your Role">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="exampleInputPassword"></label><input type="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
            </div>
            <div class="col-sm-6">
                <label for="exampleRepeatPassword"></label><input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password">
            </div>
        </div>
        <div class="form-group">
            <input class="btn btn-primary btn-user btn-block" type="submit" value= "Add new User" />
        </div>
        <hr>
        <a href="${pageContext.request.contextPath}/home" class="btn btn-warning btn-user btn-block">
            Cancel
        </a>
    </form>
    <hr>
    <div class="text-center">
        <a class="small" href="${pageContext.request.contextPath}/login">Already have an account? Login!</a>
    </div>
</div>

</body>
</html>
