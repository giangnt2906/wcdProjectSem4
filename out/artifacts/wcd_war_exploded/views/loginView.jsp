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
<jsp:include page="_menu.jsp"/>

<h3>Login Page</h3>

<p style="color: red;">${errorMessage}</p>

<form method="POST" action="login">
    <input type="hidden" name="redirectId" value="${param.redirectId}" />
    <table>
        <tr>
            <td>User Name</td>
            <td><label>
                <input type="text" name="userName" value= "Username" />
            </label></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><label>
                <input type="password" name="password" value= "Password" />
            </label></td>
        </tr>

        <tr>
            <td colspan ="2">
                <input type="submit" value= "Submit" />
                <a href="${pageContext.request.contextPath}/home">Cancel</a>
            </td>
        </tr>
    </table>
</form>

<p style="color:blue;">Login with:</p>

employee1/123 <br>
manager1/123
</body>
</html>
