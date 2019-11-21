<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/vendor/css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/vendor/css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/vendor/css/style.default.css"
          id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/vendor/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/assets/vendor/img/favicon.ico">
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
                <a href="${pageContext.request.contextPath}/Modules/home.jsp" class="brand-small text-center">
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
                    <a href="${pageContext.request.contextPath}/Modules/home.jsp">
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
                <li><a href="#"> <i class="icon-screen"> </i>客户信息</a></li>
                <li><a href=""> <i class="icon-picture"> </i>车辆信息</a></li>
                <li><a href=""> <i class="icon-picture"> </i>员工信息</a></li>
            </ul>
        </div>
    </div>
</nav>
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
                            <a href="${pageContext.request.contextPath}/index.jsp" class="nav-link logout">
                                <span class="d-none d-sm-inline-block">退出</span>
                                <i class="fa fa-sign-out"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- Counts Section -->
    <section class="dashboard-counts section-padding">
        <div class="container-fluid">
            <div class="row">
                <!-- Count item widget-->
                <div class="col-xl-2 col-md-4 col-6">
                    <div class="wrapper count-title d-flex">
                        <div class="icon"><i class="icon-user"></i></div>
                        <div class="name"><strong class="text-uppercase">新进客户</strong><span>今天</span>
                            <div class="count-number">5</div>
                        </div>
                    </div>
                </div>
                <!-- Count item widget-->
                <div class="col-xl-2 col-md-4 col-6">
                    <div class="wrapper count-title d-flex">
                        <div class="icon"><i class="icon-padnote"></i></div>
                        <div class="name"><strong class="text-uppercase">维修车辆</strong><span>今天</span>
                            <div class="count-number">7</div>
                        </div>
                    </div>
                </div>
                <!-- Count item widget-->
                <div class="col-xl-2 col-md-4 col-6">
                    <div class="wrapper count-title d-flex">
                        <div class="icon"><i class="icon-check"></i></div>
                        <div class="name"><strong class="text-uppercase">完工车辆</strong><span>今天</span>
                            <div class="count-number">6</div>
                        </div>
                    </div>
                </div>
                <!-- Count item widget-->
                <div class="col-xl-2 col-md-4 col-6">
                    <div class="wrapper count-title d-flex">
                        <div class="icon"><i class="icon-bill"></i></div>
                        <div class="name"><strong class="text-uppercase">新进客户</strong><span>当月</span>
                            <div class="count-number">100</div>
                        </div>
                    </div>
                </div>
                <!-- Count item widget-->
                <div class="col-xl-2 col-md-4 col-6">
                    <div class="wrapper count-title d-flex">
                        <div class="icon"><i class="icon-list"></i></div>
                        <div class="name"><strong class="text-uppercase">维修车辆</strong><span>当月</span>
                            <div class="count-number">166</div>
                        </div>
                    </div>
                </div>
                <!-- Count item widget-->
                <div class="col-xl-2 col-md-4 col-6">
                    <div class="wrapper count-title d-flex">
                        <div class="icon"><i class="icon-list-1"></i></div>
                        <div class="name"><strong class="text-uppercase">完工车辆</strong><span>当月</span>
                            <div class="count-number">160</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="main-footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <p>Copyright &copy; 2019.LYQX All rights reserved. 炉洋汽修 版权所有</p>
                </div>
                <div class="col-sm-6 text-right">


                </div>
            </div>
        </div>
    </footer>
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