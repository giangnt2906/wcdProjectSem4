<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/25/2020
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h3>Login Page</h3>

<div class="p-5">
    <div class="text-center">
        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
    </div>

    <p style="color: red;">${errorMessage}</p>

    <form method="POST" action="login" class="user">
        <input type="hidden" name="redirectId" value="${param.redirectId}" />
        <div class="form-group">
            <label for="exampleInputEmail"></label><input type="text" name="userName" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Username...">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword"></label><input type="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
        </div>
        <div class="form-group">
            <input class="btn btn-primary btn-user btn-block" type="submit" value= "Login" />
        </div>
        <hr>
        <a href="${pageContext.request.contextPath}/home" class="btn btn-warning btn-user btn-block">
             Cancel
        </a>
        <hr>
        <a href="#" class="btn btn-google btn-user btn-block">
            <i class="fab fa-google fa-fw"></i> Login with Google
        </a>
        <a href="#" class="btn btn-facebook btn-user btn-block">
            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
        </a>
    </form>
    <hr>
    <div class="text-center">
        <a class="small" href="forgot-password.html">Forgot Password?</a>
    </div>
    <div class="text-center">
        <a class="small" href="register.html">Create an Account!</a>
    </div>
</div>
</body>
</html>
