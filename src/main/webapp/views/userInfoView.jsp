<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/25/2020
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Info</title>
</head>
<body>
<jsp:include page="_menu.jsp"/>

<p style="color: red;">${errorMessage}</p>

<h3>Hello: ${loginedUser.userName}</h3>

User Name: <b>${loginedUser.userName}</b>
<br />
Gender: ${loginedUser.gender } <br />
</body>
</html>
