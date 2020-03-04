<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>控制台</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/bootstrap/css/bootstrap.min.css">
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
                <img src="${APP_PATH}/assets/Images/xpic4711.jpg" alt="person"
                     class="img-fluid rounded-circle">
                <h2 class="h5">炉洋汽修</h2>
                <span>LY TruckMaintenance</span>
            </div>
            <!-- Small Brand information, appears on minimized sidebar-->
            <div class="sidenav-header-logo">
                <a href="${APP_PATH}/home/home.do" class="brand-small text-center">
                    <strong>L</strong>
                    <strong class="text-primary">Y</strong>
                </a>
            </div>
        </div>
        <!-- Sidebar Navigation Menus-->
        <div class="main-menu">
            <h5 class="sidenav-heading">基本功能</h5>
            <ul id="side-main-menu" class="side-menu list-unstyled">
                <li class="active">
                    <a href="${APP_PATH}/home/home.do">
                        <i class="icon-home"></i>主页
                    </a>
                </li>
                <li>
                    <a href="${APP_PATH}/home/purchasebill.do">
                        <i class="icon-interface-windows"></i>材料采购
                    </a>
                </li>
                <li>
                    <a href="${APP_PATH}/home/maintenancebill.do">
                        <i class="icon-bill"></i>维修服务
                    </a>
                </li>
                <li>
                    <a href="#tabledropdown" aria-expanded="false" data-toggle="collapse">
                        <i class="icon-list"></i>报表查询
                    </a>
                    <ul id="tabledropdown" class="collapse list-unstyled ">
                        <li><a href="${APP_PATH}/home/inventory.do"><i class="icon-grid"></i>库存查询</a></li>
                        <%--<li><a href="#"><i class="icon-flask"></i>材料信息</a></li>--%>
                    </ul>
                </li>
                <%--<li>
                    <a href="charts.html">
                        <i class="fa fa-bar-chart"></i>图表
                    </a>
                </li>
                <li>
                    <a href="tables.html">
                        <i class="icon-grid"></i>报表
                    </a>
                </li>--%>
            </ul>
        </div>
        <div class="admin-menu">
            <h5 class="sidenav-heading">系统设置</h5>
            <ul id="side-admin-menu" class="side-menu list-unstyled">
                <!-- customerlist-2.jsp跳转方法-->
                <!-- <li><a href="${APP_PATH}/customer/customerlist.do"> <i class="icon-screen"> </i>客户信息</a></li>-->
                <!-- customerlist.jsp跳转方法-->
                <li><a href="${APP_PATH}/home/customer.do"> <i class="icon-screen"> </i>客户信息</a>
                </li>
                <li><a href="${APP_PATH}/home/truck.do"> <i class="icon-flask"> </i>车辆信息</a>
                </li>
                <li><a href="${APP_PATH}/home/worker.do"> <i class="icon-picture"> </i>员工信息</a>
                </li>
                <li>
                    <a href="#materialdropdown" aria-expanded="false" data-toggle="collapse">
                        <i class="icon-list"></i>材料设置
                    </a>
                    <ul id="materialdropdown" class="collapse list-unstyled ">
                        <li><a href="${APP_PATH}/home/material.do"><i class="icon-padnote"></i>材料信息</a></li>
                        <li><a href="${APP_PATH}/home/unit.do"><i class="icon-padnote"></i>单位信息</a></li>
                    </ul>
                </li>
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
    <div class="jumbotron">
        <!-- Counts Section -->
        <section class="dashboard-counts section-padding">
            <div class="container-fluid">
                <div class="row">
                    <!-- Count item widget-->
                    <div class="col-xl-2 col-md-4 col-6">
                        <div class="wrapper count-title d-flex">
                            <div class="icon"><i class="icon-user"></i></div>
                            <div class="name"><strong class="text-uppercase">新进 客户</strong><span>本周</span>
                                <div class="count-number" id="new_customer_week"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Count item widget-->
                    <div class="col-xl-2 col-md-4 col-6">
                        <div class="wrapper count-title d-flex">
                            <div class="icon"><i class="icon-padnote"></i></div>
                            <div class="name"><strong class="text-uppercase">维修 车辆</strong><span>本周</span>
                                <div class="count-number" id="new_truck_week"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Count item widget-->
                    <div class="col-xl-2 col-md-4 col-6">
                        <div class="wrapper count-title d-flex">
                            <div class="icon"><i class="icon-check"></i></div>
                            <div class="name"><strong class="text-uppercase">完工 车辆</strong><span>本周</span>
                                <div class="count-number" id="new_finish_week"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Count item widget-->
                    <div class="col-xl-2 col-md-4 col-6">
                        <div class="wrapper count-title d-flex">
                            <div class="icon"><i class="icon-bill"></i></div>
                            <div class="name"><strong class="text-uppercase">新进 客户</strong><span>当月</span>
                                <div class="count-number" id="new_customer_month"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Count item widget-->
                    <div class="col-xl-2 col-md-4 col-6">
                        <div class="wrapper count-title d-flex">
                            <div class="icon"><i class="icon-list"></i></div>
                            <div class="name"><strong class="text-uppercase">维修 车辆</strong><span>当月</span>
                                <div class="count-number" id="new_truck_month"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Count item widget-->
                    <div class="col-xl-2 col-md-4 col-6">
                        <div class="wrapper count-title d-flex">
                            <div class="icon"><i class="icon-list-1"></i></div>
                            <div class="name"><strong class="text-uppercase">完工 车辆</strong><span>当月</span>
                                <div class="count-number" id="new_finish_month"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
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
<script src="${APP_PATH}/assets/vendor/jquery/jquery.min.js"></script>
<script src="${APP_PATH}/assets/vendor/popper.js/umd/popper.min.js"></script>
<script src="${APP_PATH}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/assets/vendor/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
<script src="${APP_PATH}/assets/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="${APP_PATH}/assets/vendor/chart.js/Chart.min.js"></script>
<script src="${APP_PATH}/assets/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="${APP_PATH}/assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${APP_PATH}/assets/vendor/js/charts-home.js"></script>
<!-- Main File-->
<script src="${APP_PATH}/assets/vendor/js/front.js"></script>
<script>
    $(function () {
        var date = new Date();
        var seperator = "-";
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = year + seperator + month + seperator + strDate;
        $.ajax({
            url: "${APP_PATH}/maintenancebill/counts/"+ '2019-12-18',
            type: "GET",
            success: function (result) {
                //console.log(result);
                var counts = result.extend.truckCounts;
                $("#new_customer_week").html(counts.week_customer);
                $("#new_truck_week").html(counts.week_truck);
                $("#new_finish_week").html(counts.week_finish);
                $("#new_customer_month").html(counts.month_customer);
                $("#new_truck_month").html(counts.month_truck);
                $("#new_finish_month").html(counts.month_finish);
            }
        });
    });
</script>

</body>
</html>