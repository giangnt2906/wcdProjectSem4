<%--
  Created by IntelliJ IDEA.
  User: anhtran
  Date: 6/3/20
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>


<html>
<head>
    <%@ include file="../data/head.jsp" %>
    <dec:head />
</head>
<body>

<%@ include file="../data/header.jsp"%>

<dec:body />

<%@ include file="../data/footer.jsp"%>
<%@ include file="../tags/js.jsp"%>

</body>
</html>
