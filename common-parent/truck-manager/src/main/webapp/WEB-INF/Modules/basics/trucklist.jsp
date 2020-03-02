<%--
  Created by IntelliJ IDEA.
  User: kira
  Date: 2019-11-22
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>车辆列表</title>
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
                        <li><a href="#"><i class="icon-grid"></i>库存查询</a></li>
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
                <li class="active"><a href="${APP_PATH}/home/truck.do"> <i class="icon-flask"> </i>车辆信息</a>
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
    <section class="dashboard-counts section-padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h2><span class="fa fa-user-circle-o"></span> 车辆列表</h2>
                        </div>
                        <div class="card-body">
                            <div id="toolbar" class="btn-group">
                                <input type="text" id="search_input" placeholder="请输入车牌号" autocomplete="off">
                                <button id="search_btn" type="button" class="btn btn-dark">
                                    <span class="fa fa-search"></span> 搜索
                                </button>
                                <button id="add_btn" type="button" class="btn btn-primary">
                                    <span class="fa fa-plus" aria-hidden="true"></span> 新增
                                </button>
                                <button id="delete_selected_btn" type="button" class="btn btn-outline-danger">
                                    <span class="fa fa-trash" aria-hidden="true"></span> 删除
                                </button>
                            </div>
                            <table id="table"></table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- 新增车辆信息模态框 -->
<div class="modal fade" id="truckModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title"><strong class="h1 text-primary">车辆信息</strong></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form autocomplete="off">
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">车牌号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="id"
                                   id="id_input" readonly="readonly">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">车牌号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入车牌号" name="platenumber"
                                   id="platenumber_input" required>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">品牌</label>
                        <div class="col-sm-6">
                            <select class="form-control" id="brand_select" name="brandId">
                            </select>
                        </div>
                        <div class="col-sm-1">
                            <button type="button" class="btn btn-outline-primary" id="brand_add_modal_btn">
                                <span class="fa fa-plus"></span>
                            </button>
                        </div>
                        <div class="col-sm-1">
                            <button type="button" class="btn btn-outline-danger" id="brand_delete_btn">
                                <span class="fa fa-minus"></span>
                            </button>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">车型</label>
                        <div class="col-sm-6">
                            <select class="form-control" id="vehicleType_select" name="vehicletypeId">
                            </select>
                        </div>
                        <div class="col-sm-1">
                            <button type="button" class="btn btn-outline-primary" id="vehicleType_add_modal_btn">
                                <span class="fa fa-plus"></span>
                            </button>
                        </div>
                        <div class="col-sm-1">
                            <button type="button" class="btn btn-outline-danger" id="vehicleType_delete_btn">
                                <span class="fa fa-minus"></span>
                            </button>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">所属客户</label>
                        <div class="col-sm-9">
                            <select class="form-control" id="customer_select" name="customerId">
                            </select>
                        </div>
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="save_or_update_btn">保存</button>
            </div>
        </div>
    </div>
</div>

<!-- 新增车型模态框 -->
<div class="modal fade" id="vehicleTypeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title"><strong class="h1 text-primary">车型信息</strong></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form autocomplete="off">
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">车辆类型</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入车型" name="name"
                                   id="vehicleType_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="vehicleType_add_btn">保存</button>
            </div>
        </div>
    </div>
</div>

<!-- 品牌模态框 -->
<div class="modal fade" id="brandModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title"><strong class="h1 text-primary">车型信息</strong></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form autocomplete="off">
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">车辆类型</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入品牌" name="brand"
                                   id="brand_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="brand_add_btn">保存</button>
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
<!--common-->
<script type="text/javascript" src="${APP_PATH}/assets/Scripts/common.js"></script>
<!-- Main File-->
<script src="${APP_PATH}/assets/vendor/js/front.js"></script>
<!-- sweetalert-->
<script src="${APP_PATH}/assets/vendor/sweetalert/sweetalert.min.js"></script>
<!-- bootstrap-table -->
<script src="${APP_PATH}/assets/vendor/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${APP_PATH}/assets/vendor/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<!-- bootstrap-table-export -->
<script src="${APP_PATH}/assets/vendor/bootstrap-table/bootstrap-table-export.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/assets/vendor/bootstrap-table/tableExport.min.js"></script>

<script type="text/javascript">
    $(function () {
        //======================初始化========================
        //1.初始化Table
        var url = "${APP_PATH}/truck";
        var oTable = new TableInit();
        oTable.Init(url);
        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();

    });

    var TableInit = function () {
        //==============================删除=================================
        //操作栏的格式化
        function actionFormatter(value, row, index) {
            return [
                /*'<button id="look_btn" type="button" class="btn btn-outline-dark">查看</button>',*/
                '<button id="delete_one_btn" type="button" class="btn btn-outline-danger">删除</button>',
            ].join('');
        }

        window.operateEvents = {
            'click #delete_one_btn': function (e, value, row, index) {
                swal({
                    title: "确定要删除以下车辆吗？",
                    text: row.plateNumber,
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
                            url: "${APP_PATH}/maintenancebill/check/" + row.id,
                            type: "GET",
                            success: function (result) {
                                console.log(result);
                                if (result.code == 100) {
                                    $.ajax({
                                        url: "${APP_PATH}/truck/" + row.id.toString(),
                                        type: "DELETE",
                                        success: function (result) {
                                            $("#table").bootstrapTable('refresh');
                                            swal({
                                                title: "删除成功",
                                                icon: "success",
                                                button: "退出"
                                            });
                                        }
                                    });
                                } else if (result.code == 200) {
                                    swal({
                                        title: "客户信息已经被使用，无法删除",
                                        icon: "warning",
                                        button: "退出"
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
                dataType: "json",
                contentType: "application/x-www-form-urlencoded", //适配POST请求
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
                queryParams: oTableInit.queryParams,//传递参数（*）
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
                detailFormatter: function (index, row) {
                    var html = []
                    $.each(row, function (key, value) {
                        if (key != "0") {
                            html.push('<p><b>' + key + ':</b> ' + value + '</p>')
                        }
                    })
                    return html.join('')
                },

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
                //得到查询的参数
                queryParams: function (params) {
                    //这里的键的名字和控制器的变量名必须一致，这边改动，控制器也需要改成一样的
                    var temp = {
                        rows: params.limit,    //页面大小
                        page: (params.offset / params.limit) + 1,   //页码
                        sort: params.sort,      //排序列名
                        sortOrder: params.order //排位命令（desc，asc）
                    };
                    return temp;
                },
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
                        field: 'platenumber',
                        title: '车牌号',
                        align: 'center'
                    }, {
                        field: 'brand.name',
                        title: '品牌',
                        align: 'center'
                    }, {
                        field: 'vehicleType.name',
                        title: '车型',
                        align: 'center'
                    }, {
                        field: 'customer.name',
                        title: '所属客户',
                        align: 'center'
                    }, {
                        field: 'operate',
                        title: '操作',
                        width: 100,
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
                    new customerInit(row.customer.id);
                    new vehicleTypeInit(row.vehicleType.id);
                    new brandInit(row.brand.id);
                    $("#id_input").val(row.id);
                    $("#platenumber_input").val(row.platenumber);
                    $("#truckModal").modal({
                        backdrop: "static",
                        draggable: true,
                        overflow: "hidden"
                    });
                },
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
                var url = "${APP_PATH}/truck/list/" + $("#search_input").val();
                console.log(url);
                oTable.Init(url);
            });

            //=====================新增和修改==========================
            $("#add_btn").click(function () {
                reset_form("#truckModal");
                new customerInit();
                new vehicleTypeInit();
                new brandInit();
                $("#truckModal").modal({
                    backdrop: "static",
                    draggable: true,
                    overflow: "hidden"
                });
            });

            $("#save_or_update_btn").click(function () {
                input_validate();
                //1.提交数据校验
                if ($("#save_or_update_btn").attr("ajax-validate") === "fail") {
                    return false;
                }
                //2.判断id是否存在,如果不存在新增
                if ($("#id_input").val() == "") {
                    //2-1.发送ajax请求保存
                    $.ajax({
                        url: "${APP_PATH}/truck",
                        type: "POST",
                        data: $("#truckModal form").serialize(),
                        success: function (result) {
                            //后端JSR303校验通过
                            if (result.code == 100) {
                                //1.关闭模态框
                                $("#truckModal").modal('hide');
                                //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                                $("#table").bootstrapTable('refresh');
                            } else {
                                show_validate_msg($("#platenumber_input"), "fail", result.extend.name);
                            }
                        }
                    });
                } else {
                    //2-1.发送ajax请求更新
                    $.ajax({
                        url: "${APP_PATH}/truck",
                        type: "PUT",
                        data: $("#truckModal form").serialize(),
                        success: function (result) {
                            //后端JSR303校验通过
                            if (result.code == 100) {
                                //1.关闭模态框
                                $("#truckModal").modal('hide');
                                //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                                $("#table").bootstrapTable('refresh');
                            } else {
                                show_validate_msg($("#platenumber_input"), "fail", result.extend.name);
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
                var truckIds = "";
                var truckPNs = "";
                $.each(rows, function (index, row) {
                    truckIds += row.id + "-";
                    truckPNs += row.platenumber + ",";
                });
                $.ajax({
                    url: "${APP_PATH}/maintenancebill/check/" + truckIds,
                    type: "GET",
                    success: function (result) {
                        console.log(result);
                        if (result.code == 100) {
                            if (truckIds != "") {
                                truckIds = truckIds.substring(0, truckIds.length - 1);
                                truckPNs = truckPNs.substring(0, truckPNs.length - 1);
                                swal({
                                    title: "确定要删除以下客户吗？",
                                    text: truckPNs,
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
                                            url: "${APP_PATH}/truck/" + truckIds,
                                            type: "DELETE",
                                            success: function (result) {
                                                $("#table").bootstrapTable('refresh');
                                            }
                                        });
                                    }
                                })
                            } else {
                                swal({
                                    title: "请勾选想要删除的车辆",
                                    icon: "warning",
                                    button: "退出"
                                });
                            }
                        } else if (result.code == 200) {
                            var va_ids = "";
                            $.each(result.extend.va_msg, function (index, value) {
                                va_ids += value + " ";
                            });
                            swal({
                                title: "编号为：" + va_ids + "的车辆已经被使用，无法删除",
                                icon: "warning",
                                button: "退出"
                            });
                        }
                    }
                });
            });


            /==================================车型操作====================================/
            //显示新增车型模态框
            $("#vehicleType_add_modal_btn").click(function () {
                //显示模态框
                $("#vehicleTypeModal").modal({
                    backdrop: "static"
                });
            })
            //点击保存按钮新增车型
            $("#vehicleType_add_btn").click(function () {
                vehicleType_input_validate();
                //1.提交数据校验
                if ($("#vehicleType_add_btn").attr("ajax-validate") === "fail") {
                    return false;
                }

                $.ajax({
                    url: "${APP_PATH}/vehicleType",
                    type: "POST",
                    data: $("#vehicleTypeModal form").serialize(),
                    success: function (result) {
                        //1.关闭模态框
                        $("#vehicleTypeModal").modal('hide');
                        //2.车辆新增界面重新获取车辆类型
                        new vehicleTypeInit();
                    }
                });
            });

            //车辆信息模态框，车型-按钮
            $("#vehicleType_delete_btn").click(function () {
                var selectedId = $("#vehicleType_select").val();
                var selectedName = $("#vehicleType_select option:selected").text();
                swal({
                    title: "确定要删除以下车型吗？",
                    text: selectedName,
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
                            url: "${APP_PATH}/vehicleType/" + selectedId,
                            type: "DELETE",
                            success: function (result) {
                                new vehicleTypeInit();
                            }
                        });
                    }
                })
            });
            /==================================品牌操作====================================/
            //显示新增车型模态框
            $("#brand_add_modal_btn").click(function () {
                //显示模态框
                $("#brandModal").modal({
                    backdrop: "static"
                });
            })
            //点击保存按钮新增车型
            $("#brand_add_btn").click(function () {
                $.ajax({
                    url: "${APP_PATH}/brand",
                    type: "POST",
                    data: $("#brandModal form").serialize(),
                    success: function (result) {
                        //1.关闭模态框
                        $("#brandModal").modal('hide');
                        //2.车辆新增界面重新获取车辆类型
                        new brandInit();
                    }
                });
            });

            //车辆信息模态框，车型-按钮
            $("#brand_delete_btn").click(function () {
                var selectedId = $("#brand_select").val();
                var selectedName = $("#brand_select option:selected").text();
                swal({
                    title: "确定要删除以下品牌吗？",
                    text: selectedName,
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
                            url: "${APP_PATH}/brand/" + selectedId,
                            type: "DELETE",
                            success: function (result) {
                                new brandInit();
                            }
                        });
                    }
                })
            });
        };
        return oInit;
    };

    //=============================查找客户、车辆类型和品牌=======================
    //查出所有的客户并显示在下拉列表中
    var customerInit = function getCustomers(customerId) {
        //清空下拉列表
        $("#customer_select").empty();
        $.ajax({
            url: "${APP_PATH}/customer/getAllCustomers",
            type: "GET",
            success: function (result) {
                var option = $("<option></option>").append().attr("value", 0);
                option.appendTo("#customer_select");
                $.each(result.extend.customers, function () {
                    if(this.id == customerId){
                        var option = $("<option></option>").append(this.name).attr("value", this.id).attr("selected","selected");
                    }else{
                        var option = $("<option></option>").append(this.name).attr("value", this.id);
                    }
                    option.appendTo("#customer_select");
                });
            }
        });
    }

    //查出所有的车型并显示在下拉列表中
    var vehicleTypeInit = function getVehicleTypes(vtId) {
        //清空下拉列表
        $("#vehicleType_select").empty();
        $.ajax({
            url: "${APP_PATH}/vehicleType",
            type: "GET",
            success: function (result) {
                var option = $("<option></option>").append().attr("value", 0);
                option.appendTo("#vehicleType_select");
                $.each(result.extend.vehicleTypes, function () {
                    if (this.id == vtId) {
                        var option = $("<option></option>").append(this.name).attr("value", this.id).attr("selected", "selected");
                    }else{
                        var option = $("<option></option>").append(this.name).attr("value", this.id);
                    }
                    option.appendTo("#vehicleType_select");
                });
            }
        });
    }

    //查出所有的品牌并显示在下拉列表中
    var brandInit = function getBrands(brandId) {
        //清空下拉列表
        $("#brand_select").empty();
        $.ajax({
            url: "${APP_PATH}/brand",
            type: "GET",
            success: function (result) {
                var option = $("<option></option>").append().attr("value", 0);
                option.appendTo("#brand_select");
                $.each(result.extend.brands, function () {
                    if (this.id == brandId) {
                        var option = $("<option></option>").append(this.name).attr("value", this.id).attr("selected", "selected");
                    }else{
                        var option = $("<option></option>").append(this.name).attr("value", this.id);
                    }
                    option.appendTo("#brand_select");
                });
            }
        });
    }

    //=====================校验==========================
    //车型校验
    function vehicleType_input_validate() {
        //1.拿到要校验的数据
        var vehicleType = $("#vehicleType_input").val();
        //2.使用正则表达式
        var pnReg = /^[\u2E80-\u9FFF]{1,5}$/;
        if (pnReg.test(vehicleType)) {
            show_validate_msg("#vehicleType_input", "success", "");
            $("#vehicleType_add_btn").attr("ajax-validate", "success");
        } else {
            show_validate_msg("#vehicleType_input", "fail", "请输入正确的车辆类型");
            $("#vehicleType_add_btn").attr("ajax-validate", "fail");
        }
    }

    //车牌号校验
    function input_validate() {
        //1.拿到要校验的数据
        var plateNumber = $("#platenumber_input").val();
        //2.使用正则表达式
        var pnReg = /^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$/;
        if (pnReg.test(plateNumber)) {
            show_validate_msg("#platenumber_input", "success", "");
            $("#save_or_update_btn").attr("ajax-validate", "success");
        } else {
            show_validate_msg("#platenumber_input", "fail", "请输入正确的车牌号码");
            $("#save_or_update_btn").attr("ajax-validate", "fail");
        }
    }
</script>

</body>
</html>
