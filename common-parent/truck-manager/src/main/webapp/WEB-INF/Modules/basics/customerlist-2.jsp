<%--
  Created by IntelliJ IDEA.
  User: kira
  Date: 2019-11-22
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>客户列表</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
        /*pageContext.request.contextPath*/
    %>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- jquery核心类库 -->
    <script type="text/javascript"
            src="${APP_PATH}/assets/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/bootstrap/css/bootstrap.min.css">
    <%--    <!-- Bootstrap js-->
        <script type="text/javascript"
                src="${APP_PATH}/assets/vendor/bootstrap/js/bootstrap.js"></script>--%>
    <!-- Font Awesome CSS-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/css/style.default.css"
          id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon"
          href="${APP_PATH}/assets/vendor/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<!-- Side Navbar -->
<nav class="side-navbar">
    <div class="side-navbar-wrapper">
        <!-- Sidebar Header    -->
        <div class="sidenav-header d-flex align-items-center justify-content-center">
            <!-- User Info-->
            <div class="sidenav-header-inner text-center">
                <img src="${pageContext.request.contextPath}/assets/Images/xpic4711.jpg" alt="person"
                     class="img-fluid rounded-circle">
                <h2 class="h5">炉洋汽修</h2>
                <span>LY TruckMaintenance</span>
            </div>
            <!-- Small Brand information, appears on minimized sidebar-->
            <div class="sidenav-header-logo">
                <a href="${pageContext.request.contextPath}/home/home.do" class="brand-small text-center">
                    <strong>L</strong>
                    <strong class="text-primary">Y</strong>
                </a>
            </div>
        </div>
        <!-- Sidebar Navigation Menus-->
        <div class="main-menu">
            <h5 class="sidenav-heading">基本功能</h5>
            <ul id="side-main-menu" class="side-menu list-unstyled">
                <li>
                    <a href="${pageContext.request.contextPath}/home/home.do">
                        <i class="icon-home"></i>主页
                    </a>
                </li>
                <li>
                    <a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse">
                        <i class="icon-interface-windows"></i>维修服务
                    </a>
                    <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                        <li><a href="#">Page</a></li>
                        <li><a href="#">Page</a></li>
                        <li><a href="#">Page</a></li>
                    </ul>
                </li>
                <li>
                    <a href="charts.html">
                        <i class="fa fa-bar-chart"></i>图表
                    </a>
                </li>
                <li>
                    <a href="tables.html">
                        <i class="icon-grid"></i>报表
                    </a>
                </li>
            </ul>
        </div>
        <div class="admin-menu">
            <h5 class="sidenav-heading">系统设置</h5>
            <ul id="side-admin-menu" class="side-menu list-unstyled">
                <li class="active"><a href="${pageContext.request.contextPath}/customer/customerlist.do"> <i
                        class="icon-screen"> </i>客户信息</a></li>
                <li><a href="${pageContext.request.contextPath}/home/trucklist.do"> <i
                        class="icon-picture"> </i>车辆信息</a></li>
                <li><a href="${pageContext.request.contextPath}/home/workerlist.do"> <i
                        class="icon-picture"> </i>员工信息</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--page-->
<div class="page">
    <!-- navbar-->
    <header class="header">
        <nav class="navbar">
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <div class="navbar-header">
                        <a id="toggle-btn" href="#" class="menu-btn">
                            <i class="icon-bars"> </i>
                        </a>
                        <a href="#" class="navbar-brand">
                            <div class="brand-text d-none d-md-inline-block">
                                <span>管理中心 </span>
                                <strong class="text-primary">控制台</strong>
                            </div>
                        </a>
                    </div>
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <!-- Log out-->
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/user/logout.do" class="nav-link logout">
                                <span class="d-none d-sm-inline-block">退出</span>
                                <i class="fa fa-sign-out"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- content start -->
    <div class="breadcrumb-holder">
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="${pageContext.request.contextPath}/home/home.do">主页</a>
                </li>
                <li class="breadcrumb-item active">客户</li>
            </ul>
        </div>
    </div>
    <section class="dashboard-counts section-padding">
        <div class="container-fluid">
            <!-- Page Header-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h2><span class="fa fa-user-circle-o"></span> 客户列表</h2>
                        </div>
                        <div class="card-deck">
                            <div class="col-lg-8">
                                <a href="${pageContext.request.contextPath}/customer/customer.do"
                                   class="btn btn-primary"><span class="fa fa-plus"></span> 新增</a>
                                <a href="${pageContext.request.contextPath}/customer/list.do"
                                   class="btn btn-primary"><span class="fa fa-copy"></span> 复制</a>
                                <%--<button type="button" class="btn btn-primary"><span class="fa fa-copy"></span> 复制
                                </button>--%>
                                <button type="button" class="btn btn-primary" id="myc"><span class="fa fa-edit"></span>
                                    修改
                                </button>
                                <button type="button" class="btn btn-primary"><span class="fa fa-trash"></span> 删除
                                </button>
                            </div>
                            <div class="col-lg-4">
                                <input type="text">
                                <button class="btn btn-dark" type="button"><span class="fa fa-search"></span>搜索</button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <th class="table-check">
                                        <input type="checkbox"/>
                                    </th>
                                    <th class="table-id" hidden="true">ID</th>
                                    <%--<th class="table-type">类别</th>
                                    <th class="table-title">标题</th>
                                    <th class="table-author">作者</th>
                                    <th class="table-date">修改日期</th>--%>
                                    <th class="table-type">名称</th>
                                    <th class="table-type">地址</th>
                                    <th class="table-type">联系人</th>
                                    <th class="table-type">联系电话</th>
                                    </thead>
                                    <tbody id="tbody">
                                    <%--<tr>
                                        <td><input type="checkbox"/></td>
                                        <td hidden="true">1</td>
                                        &lt;%&ndash;<td><a href="#">Business management</a></td>
                                        <td>default</td>
                                        <td>测试1号</td>
                                        <td>2014年9月4日 7:28:47</td>&ndash;%&gt;
                                        <td>客户名称客户名称</td>
                                        <td>地址地址地址地址</td>
                                        <td>联系人联系人联系人</td>
                                        <td>联系电话联系电话</td>
                                    </tr>--%>
                                    <c:forEach items="${pageInfo.list}" var="customer">
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td hidden="true">${customer.id}</td>
                                            <td>${customer.name}</td>
                                            <td>${customer.address}</td>
                                            <td>${customer.contactor}</td>
                                            <td>${customer.telephone}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <!--分页文字信息-->
                            <div class="col-md-6 offset-0">
                                当前第${pageInfo.pageNum}页/共${pageInfo.pages}页，共${pageInfo.total}条记录
                            </div>
                            <!--分页条信息-->
                            <div class="col-md-7 offset-md-5">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link"
                                                                 href="${APP_PATH}/customer/customerlist.do?pn=1">首页</a>
                                        </li>
                                        <c:if test="${pageInfo.hasPreviousPage}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="${APP_PATH}/customer/customerlist.do?pn=${pageInfo.pageNum - 1}">&laquo;</a>
                                            </li>
                                        </c:if>
                                        <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                                            <c:if test="${page_num == pageInfo.pageNum}">
                                                <li class="page-item active"><a class="page-link"
                                                                                href="#">${page_num}</a></li>
                                            </c:if>
                                            <c:if test="${page_num != pageInfo.pageNum}">
                                                <li class="page-item"><a class="page-link"
                                                                         href="${APP_PATH}/customer/customerlist.do?pn=${page_num}">${page_num}</a>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${pageInfo.hasNextPage}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="${APP_PATH}/customer/customerlist.do?pn=${pageInfo.pageNum + 1}">&raquo;</a>
                                            </li>
                                        </c:if>
                                        <li class="page-item"><a class="page-link"
                                                                 href="${APP_PATH}/customer/customerlist.do?pn=${pageInfo.pages}">末页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>
<!-- JavaScript files-->
<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/popper.js/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/chart.js/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/js/charts-home.js"></script>
<!-- Main File-->
<script src="${pageContext.request.contextPath}/assets/vendor/js/front.js"></script>

</body>
</html>