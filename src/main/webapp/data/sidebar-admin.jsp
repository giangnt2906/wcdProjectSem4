<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/backend/home">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/backend/home">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Pages
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-sitemap"></i>
            <span>Category</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Category Pages:</h6>
                <a class="collapse-item" href="${pageContext.request.contextPath}/backend/category/categoryList">List</a>
                <a class="collapse-item" href="${pageContext.request.contextPath}/backend/category/categoryAdd">Add</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-archive"></i>
            <span>Product</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Product Pages:</h6>
                <a class="collapse-item" href="${pageContext.request.contextPath}/backend/product/productList">List</a>
                <a class="collapse-item" href="${pageContext.request.contextPath}/backend/product/productAdd">Add</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Interface
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/backend/employeeTask">
            <i class="fas fa-fw fa-child"></i>
            <span>Employee Task</span>
        </a>
        <a class="nav-link" href="${pageContext.request.contextPath}/backend/managerTask">
            <i class="fas fa-fw fa-street-view"></i>
            <span>Manager Task</span>
        </a>
        <a class="nav-link" href="${pageContext.request.contextPath}/backend/userAdd">
            <i class="fas fa-fw fa-user-plus"></i>
            <span>Create User</span>
        </a>
        <a class="nav-link" href="${pageContext.request.contextPath}/backend/userManage">
            <i class="fas fa-fw fa-users"></i>
            <span>List User</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

</ul>
<!-- End of Sidebar -->