<%--
  Created by IntelliJ IDEA.
  User: kira
  Date: 2019-12-17
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>维修服务</title>
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
    <!-- bootstrap-table -->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/bootstrap-table/bootstrap-table.min.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- datetimepicker-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/datetimepicker/bootstrap-datetimepicker.min.css"
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
                <li>
                    <a href="${APP_PATH}/home/home.do">
                        <i class="icon-home"></i>主页
                    </a>
                </li>
                <li>
                    <a href="${APP_PATH}/home/purchasebill.do">
                        <i class="icon-interface-windows"></i>材料采购
                    </a>
                </li>
                <li class="active">
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
                            <a href="${APP_PATH}/user/logout.do" class="nav-link logout">
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
                    <a href="${APP_PATH}/home/home.do">主页</a>
                </li>
                <li class="breadcrumb-item active">维修单</li>
            </ul>
        </div>
    </div>
    <section class="dashboard-counts section-padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h2><span class="fa fa-user-circle-o"></span> 维修单列表</h2>
                        </div>
                        <div class="card-deck">
                            <div class="card-body">
                                <div id="toolbar" class="btn-group">
                                    <div>
                                        <div class="input-group  date form_date" data-date=""
                                             data-date-format="yyyy/mm/dd">
                                            <input class="form-control" type="text" value=""
                                                   id="begindate_input" placeholder="起始日" autocomplete="off">
                                            <span class="input-group-addon sr-only"><span
                                                    class="glyphicon glyphicon-remove"></span></span>
                                            <span class="input-group-addon sr-only"><span
                                                    class="glyphicon glyphicon-calendar"></span></span>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="input-group date form_date" data-date=""
                                             data-date-format="yyyy/mm/dd">
                                            <input class="form-control " type="text" value=""
                                                   id="enddate_input" placeholder="截止日" autocomplete="off">
                                            <span class="input-group-addon sr-only"><span
                                                    class="glyphicon glyphicon-remove"></span></span>
                                            <span class="input-group-addon sr-only"><span
                                                    class="glyphicon glyphicon-calendar"></span></span>
                                        </div>
                                    </div>
                                    <div>
                                        <input type="text" class="form-control" id="platenumber_input"
                                               placeholder="车牌号" autocomplete="off">
                                    </div>
                                    <button class="btn btn-dark" type="button" id="search_btn">
                                        <span class="fa fa-search"></span> 搜索
                                    </button>
                                    <button type="button" class="btn btn-primary" id="add_btn">
                                        <span class="fa fa-plus"></span> 新增
                                    </button>
                                    <button type="button" class="btn btn-outline-danger" id="delete_selected_btn">
                                        <span class="fa fa-trash"></span> 删除
                                    </button>
                                </div>
                                <table id="table"></table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- 新增模态框 -->
<div class="modal fade" id="billsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     style="overflow:scroll">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title"><strong class="h1 text-primary">维修单</strong></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form autocomplete="off">
                    <div class="col-md-12 row">
                        <div class="col-md-6 pull-left">
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">维修单号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="id" id="id_input" readonly>
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">车牌号</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="truck_select" name="truckId">
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">客户</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder=""
                                           id="customer_input" readonly>
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">进厂里程</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" placeholder="请输入进厂里程" name="entrymileage"
                                           id="mileage_input">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 pull-right">
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">维修状态</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="status_select" name="statusId">
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="enter_input" class="col-sm-3 form-control-label">进厂时间</label>
                                <div class="input-group date form_date col-sm-8" data-date=""
                                     data-date-format="yyyy年mm月dd日"
                                     data-link-field="enter_input" data-link-format="yyyy/mm/dd">
                                    <input class="form-control" type="text" id="enterdate_input" placeholder="请选择进厂时间">
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                </div>
                                <input type="hidden" id="enter_input" name="enterdate"/><br/>
                            </div>

                            <div class="form-group row">
                                <label for="appointed_input" class="col-sm-3 form-control-label">出厂时间</label>
                                <div class="input-group date form_date col-sm-8" data-date=""
                                     data-date-format="yyyy年mm月dd日"
                                     data-link-field="appointed_input" data-link-format="yyyy/mm/dd">
                                    <input class="form-control" type="text" id="appointeddate_input"
                                           placeholder="请选择出厂时间">
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                </div>
                                <input type="hidden" id="appointed_input" name="appointeddate"/><br/>
                            </div>

                            <div class="form-group row">
                                <label for="setting_input" class="col-sm-3 form-control-label">结算时间</label>
                                <div class="input-group date form_date col-sm-8" data-date=""
                                     data-date-format="yyyy年mm月dd日"
                                     data-link-field="setting_input" data-link-format="yyyy/mm/dd">
                                    <input class="form-control" type="text" id="settingdate_input"
                                           placeholder="请选择结算时间">
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                </div>
                                <input type="hidden" id="setting_input" name="settingdate"/><br/>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="bill_save_or_update_btn">保存</button>
            </div>
        </div>
    </div>
</div>

<!-- 新增维修项目模态框 -->
<div class="modal fade" id="itemModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     style="overflow:scroll">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title"><strong class="h1 text-primary">维修项目</strong></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form autocomplete="off">
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="item_billid_input">维修单号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="billId" id="item_billid_input" readonly>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="itemid_input">项目编号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="id" id="itemid_input" readonly>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="item_input">维修项目</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入维修项目" name="item" id="item_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="itemfees_input">项目费用</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入项目费用" name="itemfees"
                                   id="itemfees_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="item_save_or_update_btn">保存</button>
            </div>
        </div>
    </div>
</div>

<!-- 新增维修材料模态框 -->
<div class="modal fade" id="materialModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     style="overflow:scroll">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title"><strong class="h1 text-primary">维修材料</strong></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form autocomplete="off">
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="material_billid_input">维修单号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="billId" id="material_billid_input" readonly>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="materialid_input">明细编号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="" name="id"
                                   id="materialid_input" readonly>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">材料编码</label>
                        <div class="col-sm-9">
                            <select class="form-control" id="materialId_select" name="materialId">
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="unit_input">单位</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="" name="unit" id="unit_input" readonly>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="quantity_input">数量</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入数量" name="quantity"
                                   id="quantity_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="price_input">单价</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入单价" name="price"
                                   id="price_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="amount_input">金额</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入金额" name="amount"
                                   id="amount_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="material_save_or_update_btn">保存</button>
            </div>
        </div>
    </div>
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
<script src="${APP_PATH}/assets/vendor/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="${APP_PATH}/assets/vendor/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- Main File-->
<script src="${APP_PATH}/assets/vendor/js/front.js"></script>
<!--common-->
<script type="text/javascript" src="${APP_PATH}/assets/Scripts/common.js"></script>
<!-- sweetalert-->
<script src="${APP_PATH}/assets/vendor/sweetalert/sweetalert.min.js"></script>
<!-- bootstrap-table -->
<script src="${APP_PATH}/assets/vendor/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${APP_PATH}/assets/vendor/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<!-- bootstrap-table-export -->
<script src="${APP_PATH}/assets/vendor/bootstrap-table/bootstrap-table-export.min.js"></script>
<script src="${APP_PATH}/assets/vendor/bootstrap-table/tableExport.min.js"></script>
<script type="text/javascript">
    $(function () {
        //======================初始化========================
        //1.初始化Table
        var url = "${APP_PATH}/maintenancebill";

        var oTable = new TableInit();
        oTable.Init(url);

        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();

    });

    var TableInit = function () {
        //=============================新增维修项目&维修材料===================================
        //操作栏的格式化
        function actionFormatter(value, row, index) {
            return [
                /*'<button id="delete_one_btn" type="button" class="btn btn-outline-danger btn-sm"><span class="fa fa-trash"></span>删除</button>',*/
                '<button id="item_add_btn" type="button" class="btn btn-primary btn-sm"><span class="fa fa-plus"></span>项目</button>',
                '<button id="material_add_btn" type="button" class="btn btn-secondary btn-sm"><span class="fa fa-plus"></span>材料</button>',
            ].join('');
        }

        //操作
        window.operateEvents = {
            //维修项目新增按钮
            'click #item_add_btn': function (e, value, row, index) {
                reset_form("#itemModal");
                $("#item_billid_input").val(row.id);
                $("#itemModal").modal({
                    backdrop: "static",
                    draggable: true,
                    overflow: "hidden"
                });
                $("#item_save_or_update_btn").click(function () {
                    //新增
                    if ($("#itemid_input").val() == "") {
                        $.ajax({
                            url: "${APP_PATH}/maintenanceitem",
                            type: "POST",
                            data: $("#itemModal form").serialize(),
                            success: function (result) {
                                if (result.code == 100) {
                                    $("#itemModal").modal("hide");
                                    //$("#item_table").bootstrapTable('refresh');
                                    swal({
                                        title: "维修项目保存成功",
                                        icon: "success",
                                        button: "确定"
                                    });
                                } else if (result.code == 200) {
                                    swal({
                                        title: "维修项目保存失败",
                                        icon: "error",
                                        button: "确定"
                                    });
                                }
                            }
                        });
                    } else {//更新
                        $.ajax({
                            url: "${APP_PATH}/maintenanceitem",
                            type: "PUT",
                            data: $("#itemModal form").serialize(),
                            success: function (result) {
                                if (result.code == 100) {
                                    $("#itemModal").modal("hide");
                                    //$("#item_table").bootstrapTable('refresh');
                                    swal({
                                        title: "维修项目修改成功",
                                        icon: "success",
                                        button: "确定"
                                    });
                                } else if (result.code == 200) {
                                    swal({
                                        title: "维修项目修改失败",
                                        icon: "error",
                                        button: "确定"
                                    });
                                }
                            }
                        });
                    }
                })
            },

            //维修材料新增按钮
            'click #material_add_btn': function (e, value, row, index) {
                reset_form("#materialModal");
                new materialInit();
                $("#material_billid_input").val(row.id);
                $("#materialModal").modal({
                    backdrop: "static",
                    draggable: true,
                    overflow: "hidden"
                });
                $("#material_save_or_update_btn").click(function () {
                    if ($("#materialid_input").val() == "") {
                        $.ajax({
                            url: "${APP_PATH}/maintenancematerial",
                            type: "POST",
                            data: $("#materialModal form").serialize(),
                            success: function (result) {
                                if (result.code == 100) {
                                    $("#materialModal").modal("hide");
                                    //$("#material_table").bootstrapTable('refresh');
                                    swal({
                                        title: "维修材料保存成功",
                                        icon: "success",
                                        button: "确定"
                                    });
                                } else if (result.code == 200) {
                                    swal({
                                        title: "维修材料保存失败",
                                        icon: "error",
                                        button: "确定"
                                    });
                                }
                            }
                        });
                    } else {
                        $.ajax({
                            url: "${APP_PATH}/maintenancematerial",
                            type: "PUT",
                            data: $("#materialModal form").serialize(),
                            success: function (result) {
                                if (result.code == 100) {
                                    $("#materialModal").modal("hide");
                                    //$("#material_table").bootstrapTable('refresh');
                                    swal({
                                        title: "维修材料修改成功",
                                        icon: "success",
                                        button: "确定"
                                    });
                                } else if (result.code == 200) {
                                    swal({
                                        title: "维修材料修改失败",
                                        icon: "error",
                                        button: "确定"
                                    });
                                }
                            }
                        });
                    }
                })
            }
        };
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function (url) {
            //先销毁表格
            $('#table').bootstrapTable("destroy");
            //加载表格
            $('#table').bootstrapTable({
                url: url,
                method: "GET",                      //请求方式（*）
                //dataType: "json",
                //contentType: "application/x-www-form-urlencoded", //适配POST请求
                showHeader: true,                   //是否显示列头
                showLoading: true,
                showFullscreen: true,
                sidePagination: "server",          //分页方式：client客户端分页，server服务端分页（*）
                toolbar: "#toolbar",                //工具按钮用哪个容器
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）
                sortable: true,                     //是否启用排序
                sortOrder: "asc",                   //排序方式
                //queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,                      //初始化加载第一页，默认第一页
                pageSize: 10,                       //每页的记录行数（*）
                pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
                search: false,                      //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: true,
                showColumns: true,                  //是否显示所有的列
                showRefresh: false,                 //是否显示刷新按钮
                minimumCountColumns: 2,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                //height: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "id",                     //每一行的唯一标识，一般为主键列
                showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                paginationLoop: false,              //是否无限循环
                detailView: true,                  //是否显示父子表
                //得到查询的参数
                queryParams: function (params) {
                    var beginDate = $("#begindate_input").val();
                    var endDate = $("#enddate_input").val();
                    var truckId = $("#platenumber_input").attr("truckId");

                    //这里的键的名字和控制器的变量名必须一致，这边改动，控制器也需要改成一样的
                    var temp = {
                        truckId: truckId,
                        beginDate: beginDate,
                        endDate: endDate,
                        rows: params.limit,    //页面大小
                        page: (params.offset / params.limit) + 1,   //页码
                        sort: params.sort,      //排序列名
                        sortOrder: params.order,//排位命令（desc，asc）

                    };
                    return temp;
                },

                //导出设置
                exportDataType: "selected",         //导出checkbox选中的行数
                showExport: true,  //工具栏上显示导出按钮
                //exportTypes: ['json', 'xml', 'png', 'csv', 'txt', 'sql', 'doc', 'excel', 'xlsx', 'pdf'],//导出格式
                exportTypes: ['excel'],//导出格式
                exportOptions: {//导出设置
                    ignoreColumn: [0],  //忽略某一列的索引
                    fileName: '客户信息',  //文件名称设置
                    worksheetName: 'sheet1',  //表格工作区名称
                    tableName: '客户信息',
                    //excelstyles: ['background-color:red', 'color', 'font-size', 'font-weight'],
                },

                //表头展示
                columns: [
                    {
                        checkbox: true,
                        visible: true,
                        align: 'center'
                    }, {
                        field: 'id',
                        title: '编号',
                        align: 'center'
                    }, {
                        field: 'truck.platenumber',
                        title: '车牌号',
                        align: 'center'
                    }, {
                        field: 'enterdate',
                        title: '进厂时间',
                        align: 'center'
                    }, {
                        field: 'appointeddate',
                        title: '出厂时间',
                        align: 'center'
                    }, {
                        field: 'settingdate',
                        title: '结算时间',
                        align: 'center'
                    }, {
                        field: 'entrymileage',
                        title: '进厂里程',
                        align: 'center'
                    }, {
                        field: 'maintenanceBillStatus.name',
                        title: '车辆状态',
                        align: 'center'
                    }, {
                        field: 'operate',
                        title: '操作',
                        width: 160,
                        align: 'center',
                        valign: 'middle',
                        events: operateEvents,//给按钮注册事件
                        formatter: actionFormatter//表格中增加按钮
                    }
                ],
                onLoadSuccess: function () {

                },
                onLoadError: function () {

                },

                onDblClickRow: function (row, $element) {
                    new truckInit(row.truckId);
                    new statusInit(row.statusId);
                    //console.log($element);
                    $("#id_input").val(row.id);
                    /*$("#status_select").val([row.statusId]);
                    $("#truck_select").val([row.truckId]);*/
                    /*$("#billsModal select[name=status_select]").val([row.statusId]);
                    $("#billsModal select[name=truck_select]").val([row.truckId]);*/
                    $("#customer_input").val(row.truck.customer.name);
                    $("#mileage_input").val(row.entrymileage);
                    $("#enterdate_input").val(row.enterdate);
                    $("#appointeddate_input").val(row.appointeddate);
                    $("#settingdate_input").val(row.settingdate);
                    $("#billsModal").modal({
                        backdrop: "static",
                        draggable: true,
                        overflow: "hidden"
                    });
                },

                //注册加载子表的事件。注意下这里的三个参数！
                onExpandRow: function (index, row, $detail) {
                    //维修项目操作栏的格式化
                    function item_actionFormatter(value, row, index) {
                        return [
                            '<button id="item_delete_one_btn" type="button" class="btn btn-outline-danger btn-sm"><span class="fa fa-trash"></span>删除</button>',
                        ].join('');
                    }

                    window.item_operateEvents = {
                        //删除单个维修项目按钮
                        'click #item_delete_one_btn': function (e, value, row, index) {
                            swal({
                                title: "确定要删除以下维修项目吗？",
                                text: row.name,
                                icon: "warning",
                                buttons: {
                                    cancel: "取消",
                                    confirm: {
                                        text: "确定",
                                        value: "delete"
                                    }
                                },
                            }).then((value) => {
                                $.ajax({
                                    url: "${APP_PATH}/maintenanceitem/" + row.id.toString(),
                                    type: "DELETE",
                                    success: function (result) {
                                        //$("#item_table").bootstrapTable('refresh');
                                        swal({
                                            title: "删除成功",
                                            icon: "success",
                                            button: "退出"
                                        });
                                    }
                                });
                            })
                        }
                    }

                    //维修材料操作栏的格式化
                    function material_actionFormatter(value, row, index) {
                        return [
                            '<button id="material_delete_one_btn" type="button" class="btn btn-outline-danger btn-sm"><span class="fa fa-trash"></span>删除</button>',
                        ].join('');
                    }

                    window.material_operateEvents = {
                        //删除单个维修项目按钮
                        'click #material_delete_one_btn': function (e, value, row, index) {
                            swal({
                                title: "确定要删除以下维修材料吗？",
                                text: row.name,
                                icon: "warning",
                                buttons: {
                                    cancel: "取消",
                                    confirm: {
                                        text: "确定",
                                        value: "delete"
                                    }
                                },
                            }).then((value) => {
                                $.ajax({
                                    url: "${APP_PATH}/maintenancematerial/" + row.id.toString(),
                                    type: "DELETE",
                                    success: function (result) {
                                        //$("#material_table").bootstrapTable('refresh');
                                        swal({
                                            title: "删除成功",
                                            icon: "success",
                                            button: "退出"
                                        });
                                    }
                                });
                            })
                        }
                    }

                    //子表
                    var billId = row.id;

                    var item_table = $detail.append('<table>维修项目</table><br>').find('table');
                    var material_table = $detail.append('<table>维修材料</table>').find('table');

                    var item_table = $(item_table).bootstrapTable({
                        url: '${APP_PATH}/maintenanceitem/bill/' + billId,
                        method: 'GET',
                        queryParams: {strParentID: billId},
                        ajaxOptions: {strParentID: billId},
                        clickToSelect: true,
                        detailView: false,//父子表
                        uniqueId: "id",
                        pageSize: 10,
                        pageList: [10, 25],
                        columns: [{
                            field: 'id',
                            title: '项目编号'
                        }, {
                            field: 'item',
                            title: '维修项目'
                        }, {
                            field: 'itemfees',
                            title: '维修费用'
                        }, {
                            field: 'billId',
                            title: '维修单号'
                        }, {
                            field: 'operate',
                            title: '操作',
                            width: 100,
                            align: 'center',
                            valign: 'middle',
                            events: item_operateEvents,//给按钮注册事件
                            formatter: item_actionFormatter//表格中增加按钮
                        }],
                        //无线循环取子表，直到子表里面没有记录
                        onExpandRow: function (index, row, $Subdetail) {
                        },
                        onDblClickRow: function (row, $element) {
                            $("#item_billid_input").val(row.billId);
                            $("#itemid_input").val(row.id);
                            $("#item_input").val(row.item);
                            $("#itemfees_input").val(row.itemfees);
                            $("#itemModal").modal({
                                backdrop: "static",
                                draggable: true,
                                overflow: "hidden"
                            });
                        }
                    });


                    var material_table = $(material_table).bootstrapTable({
                        url: '${APP_PATH}/maintenancematerial/bill/' + billId,
                        method: 'GET',
                        queryParams: {strParentID: billId},
                        ajaxOptions: {strParentID: billId},
                        clickToSelect: true,
                        detailView: false,//父子表
                        uniqueId: "id",
                        pageSize: 10,
                        pageList: [10, 25],
                        columns: [{
                            field: 'materialId',
                            title: '材料编码'
                        }, {
                            field: 'material.name',
                            title: '材料名称'
                        }, {
                            field: 'material.unit.name',
                            title: '单位'
                        }, {
                            field: 'quantity',
                            title: '数量'
                        }, {
                            field: 'price',
                            title: '单价'
                        }, {
                            field: 'amount',
                            title: '金额'
                        }, {
                            field: 'billId',
                            title: '维修单号'
                        }, {
                            field: 'operate',
                            title: '操作',
                            width: 100,
                            align: 'center',
                            valign: 'middle',
                            events: material_operateEvents,//给按钮注册事件
                            formatter: material_actionFormatter//表格中增加按钮
                        }],
                        //无线循环取子表，直到子表里面没有记录
                        onExpandRow: function (index, row, $Subdetail) {
                        },
                        onDblClickRow: function (row, $element) {
                            new materialInit(row.materialId);
                            $("#material_billid_input").val(row.billId);
                            $("#materialid_input").val(row.id);
                            $("#unit_input").val(row.material.unit.name);
                            $("#quantity_input").val(row.quantity);
                            $("#price_input").val(row.price);
                            $("#amount_input").val(row.amount);
                            $("#materialModal").modal({
                                backdrop: "static",
                                draggable: true,
                                overflow: "hidden"
                            });
                        }
                    });
                }
            });
        };
        return oTableInit;
    };

    var ButtonInit = function () {
        var oInit = new Object();
        var postdata = {};

        oInit.Init = function () {
            //初始化页面上面的按钮事件
            //======================查找=========================
            $("#search_btn").click(function () {
                var url = "${APP_PATH}/maintenancebill/list";
                var oTable = new TableInit();
                oTable.Init(url);
            });

            //=====================新增和修改==========================
            $("#add_btn").click(function () {
                reset_form("#billsModal");
                new truckInit();
                new statusInit();
                $("#billsModal").modal({
                    backdrop: "static",
                    draggable: true,
                    overflow: "hidden"
                });
            });
            //维修单新增或者修改，改变车牌号，自动带出客户
            $("#truck_select").change(function () {
                $("#customer_input").empty();
                var id = $(this).val();
                $.ajax({
                    url: "${APP_PATH}/truck/" + id,
                    type: "GET",
                    success: function (result) {
                        var truckData = result.extend.truck;
                        $("#customer_input").val(truckData.customer.name);
                    }
                });
            });

            $("#bill_save_or_update_btn").click(function () {
                if ($("#enter_input").val() == "") {
                    $("#enter_input").removeAttr("name");
                }
                if ($("#appointed_input").val() == "") {
                    $("#appointed_input").removeAttr("name");
                }
                if ($("#setting_input").val() == "") {
                    $("#setting_input").removeAttr("name");
                }
                //2.判断id是否存在,如果不存在新增
                if ($("#id_input").val() == "") {
                    //2-1.发送ajax请求保存
                    $.ajax({
                        url: "${APP_PATH}/maintenancebill",
                        type: "POST",
                        data: $("#billsModal form").serialize(),
                        success: function (result) {
                            if (result.code == 100) {
                                //1.关闭模态框
                                $("#billsModal").modal('hide');
                                //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                                $("#table").bootstrapTable('refresh');
                            } else if (result.code == 200) {
                                swal({
                                    title: "车辆信息保存失败",
                                    icon: "error",
                                    button: "确定"
                                });
                            }
                        }
                    });
                } else {
                    //2-1.发送ajax请求更新
                    $.ajax({
                        url: "${APP_PATH}/maintenancebill",
                        type: "PUT",
                        data: $("#billsModal form").serialize(),
                        success: function (result) {
                            if (result.code == 100) {
                                //1.关闭模态框
                                $("#billsModal").modal('hide');
                                //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                                $("#table").bootstrapTable('refresh');
                            } else if (result.code == 200) {
                                swal({
                                    title: "车辆信息修改失败",
                                    icon: "error",
                                    button: "确定"
                                });
                            }
                        }
                    });
                }
            });

            //=====================删除==========================
            $("#delete_selected_btn").click(function () {
                //使用getSelections即可获得，row是json格式的数据
                var rows = $.map($('#table').bootstrapTable('getSelections'), function (rows) {
                    return rows;
                });
                var billIds = "";
                var platenumbers = "";
                $.each(rows, function (index, row) {
                    billIds += row.id + "-";
                    platenumbers += row.truck.platenumber + ",";
                });
                if (billIds != "") {
                    billIds = billIds.substring(0, billIds.length - 1);
                    platenumbers = platenumbers.substring(0, platenumbers.length - 1);
                    swal({
                        title: "确定要删除以下车辆的维修单吗？",
                        text: platenumbers,
                        icon: "warning",
                        buttons: {
                            cancel: "取消",
                            confirm: {
                                text: "确定",
                                value: "delete"
                            }
                        },
                    }).then((value) => {
                        if (value == "delete") {
                            $.ajax({
                                url: "${APP_PATH}/maintenancebill/" + billIds,
                                type: "DELETE",
                                success: function (result) {
                                    $("#table").bootstrapTable('refresh');
                                }
                            });
                        }
                    })
                }
            });
        };
        return oInit;
    };

    /=======================datetimepicker=========================/
    //datetimepicker控件
    $(".form_date").datetimepicker({
        fontAwesome: 'font-awesome',//解决bootstrap4左右箭头不显示
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });

    //===========================车牌号输入框变化后，根据车牌号查询出车辆内码==========================
    $("#platenumber_input").change(function () {
        var platenumber = $("#platenumber_input").val();
        $.ajax({
            url: "${APP_PATH}/truck/getTruckByPN",
            type: "GET",
            data: "platenumber=" + platenumber,
            success: function (result) {
                if (result.code == 100) {
                    truckId = result.extend.truck.id;
                    $("#platenumber_input").attr("truckId", truckId);
                } else if (result.code == 200) {
                    $("#platenumber_input").removeAttr("truckId");
                }
            }
        });
    });

    //物料更改，单位更改
    $("#materialId_select").change(function () {
        $("#unit_input").val("");
        var id = $(this).val();
        if (id == "") {
            $("#unit_input").val("");
        } else {
            $.ajax({
                url: "${APP_PATH}/material/" + id,
                type: "GET",
                success: function (result) {
                    var data = result.extend.material;
                    $("#unit_input").val(data.unit.name);
                }
            });
        }
    });

    //=============================查找车辆信息和车辆状态=======================
    //查出所有的客户并显示在下拉列表中
    var truckInit = function getTrucks(truckId) {
        //清空下拉列表
        $("#truck_select").empty();
        $.ajax({
            url: "${APP_PATH}/truck/getAllTrucks",
            type: "GET",
            success: function (result) {
                $.each(result.extend.trucks, function () {
                    if (this.id == truckId) {
                        var option = $("<option></option>").append(this.platenumber).attr("value", this.id).attr("selected", "selected");
                    } else {
                        var option = $("<option></option>").append(this.platenumber).attr("value", this.id);
                    }
                    option.appendTo("#truck_select");
                });
            }
        });
    }

    //查出所有的车型并显示在下拉列表中
    var statusInit = function getStatus(statusId) {
        //清空下拉列表
        $("#status_select").empty();
        $.ajax({
            url: "${APP_PATH}/billStatus/getAllBillStatus",
            type: "GET",
            success: function (result) {
                $.each(result.extend.billStatuses, function () {
                    if (this.id == statusId) {
                        var option = $("<option></option>").append(this.name).attr("value", this.id).attr("selected", "selected");
                    } else {
                        var option = $("<option></option>").append(this.name).attr("value", this.id);
                    }
                    option.appendTo("#status_select");
                });
            }
        });
    }

    //查出所有的单位并显示在下拉列表中
    var materialInit = function getMaterials(materialId) {
        //清空下拉列表
        $("#materialId_select").empty();
        $.ajax({
            url: "${APP_PATH}/material/getAllMaterials",
            type: "GET",
            success: function (result) {
                var option = $("<option></option>").append().attr("value", 0);
                option.appendTo("#materialId_select");
                $.each(result.extend.materials, function () {
                    if (this.id == materialId) {
                        option = $("<option></option>").append(this.name).attr("value", this.id).attr("selected", "selected");
                    } else {
                        option = $("<option></option>").append(this.name).attr("value", this.id)
                    }
                    option.appendTo("#materialId_select");
                });
            }
        });
    }
</script>
</body>
</html>
