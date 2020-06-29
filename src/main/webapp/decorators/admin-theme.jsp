<%--
  Created by IntelliJ IDEA.
  User: GIANG
  Date: 6/28/2020
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>

<%--<%@ include file="../tags/tagslib.jsp" %>--%>
<html>
<head>
    <title>Admin</title>
    <%@ include file="../data/head-admin.jsp" %>
    <dec:head />
</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
        <%@ include file="../data/sidebar-admin.jsp"%>

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <%@ include file="../data/header-admin.jsp"%>

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <dec:body />
                </div>
            </div>
        </div>
    </div>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

<%@ include file="../data/footer-admin.jsp"%>
<%@ include file="../tags/js.jsp"%>

</body>
</html>
