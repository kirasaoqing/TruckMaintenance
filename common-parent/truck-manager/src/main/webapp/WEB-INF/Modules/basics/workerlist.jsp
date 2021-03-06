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
    <title>员工列表</title>
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
          href="${APP_PATH}/assets/vendor/datetimepicker/bootstrap-datetimepicker.min.css">
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
                <li class="active"><a href="${APP_PATH}/home/worker.do"> <i class="icon-picture"> </i>员工信息</a>
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
    <section class="dashboard-counts section-padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h2><span class="fa fa-user-circle-o"></span> 员工列表</h2>
                        </div>
                        <div class="card-body">
                            <div id="toolbar" class="btn-group">
                                <input type="text" id="search_input" placeholder="请输入员工姓名" autocomplete="off">
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
    </section>
</div>

<!-- 新增员工信息模态框 -->
<div class="modal fade" id="workerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title"><strong class="h1 text-primary">员工信息</strong></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form autocomplete="off">
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="name_input">编号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="id" id="id_input" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="name_input">姓名</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入员工姓名" name="name" id="name_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="identity_input">身份证号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入身份证号" name="identity"
                                   id="identity_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label">性别</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="gender_M_input" value="M" checked="checked"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="gender_F_input" value="F"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="telephone_input">电话</label>
                        <div class="col-sm-6">
                            <input type="tel" class="form-control" placeholder="请输入联系电话" name="telephone"
                                   id="telephone_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="address_input">家庭地址</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入家庭地址" name="address"
                                   id="address_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="dtp_input" class="col-sm-3 form-control-label">入职时间</label>
                        <div class="input-group date form_date col-sm-8" data-date="" data-date-format="yyyy年mm月dd日"
                             data-link-field="dtp_input" data-link-format="yyyy/mm/dd">
                            <input class="form-control col-sm-8" type="text" id="entrydate_input" value="" readonly>
                            <div class="col-sm-2">
                                <span class="input-group-addon btn btn-outline-secondary">
                                    <span class="glyphicon glyphicon-remove fa fa-trash"></span>
                                </span>
                            </div>
                            <div class="col-sm-2">
                                <span class="input-group-addon btn btn-outline-primary">
                                    <span class="glyphicon glyphicon-calendar fa fa-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <input type="hidden" id="dtp_input" name="entrydate"/><br/>
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
<script src="${APP_PATH}/assets/vendor/bootstrap-table/tableExport.min.js"></script>
<script type="text/javascript">
    $(function () {
        //======================初始化========================
        //1.初始化Table
        var url = "${APP_PATH}/worker";
        var oTable = new TableInit();
        oTable.Init(url);
        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();

    });

    //=====================校验==========================
    //客户名称校验
    function identity_input_validate() {
        //1.拿到要校验的数据
        var identity = $("#identity_input").val();
        //2.使用正则表达式
        var IDReg = /^[1-9]\d{5}(18|19|20)\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
        if (IDReg.test(identity)) {
            show_validate_msg("#identity_input", "success", "");
            $("#save_or_update_btn").attr("ajax-validate", "success");
        } else {
            show_validate_msg("#identity_input", "fail", "请输入正确的身份证号码");
            $("#save_or_update_btn").attr("ajax-validate", "fail");
        }
    }

    //校验信息显示
    function show_validate_msg(ele, status, msg) {
        //清除当前元素的校验状态
        reset_ele(ele)
        //添加校验状态
        if ("success" == status) {
            $(ele).addClass("is-valid");
            $(ele).next("span").text(msg);
            $(ele).next("span").addClass("valid-feedback");
        } else if ("fail" == status) {
            $(ele).addClass("is-invalid");
            $(ele).next("span").text(msg);
            $(ele).next("span").addClass("invalid-feedback");
        }
    }

    //重置元素
    function reset_ele(ele) {
        $(ele).removeClass("is-invalid is-valid");
        $(ele).next("span").text("");
        $(ele).next("span").removeClass("invalid-feedback valid-feedback");
    }

    //重置表单
    function reset_form(ele) {
        //$(ele)[0].reset();
        $(ele).find("*").removeClass("is-invalid is-valid invalid-feedback valid-feedback");
        $(ele).find(".help-block").text("");
        $(ele).find("*").val("");
    }

    var TableInit = function () {
        //=============================删除===================================
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
                    title: "确定要删除以下员工吗？",
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
                    if (value == "delete") {
                        $.ajax({
                            url: "${APP_PATH}/worker/" + row.id.toString(),
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
                        field: 'name',
                        title: '姓名',
                        align: 'center'
                    }, {
                        field: 'identity',
                        title: '身份证号',
                        align: 'center'
                    }, {
                        field: 'gender',
                        title: '性别',
                        align: 'center',
                        formatter: function (value, item, index) {
                            if (value == "M") {
                                return '男';
                            } else if (value == "F") {
                                return '女';
                            }
                        }
                    }, {
                        field: 'telephone',
                        title: '电话',
                        align: 'center'
                    }, {
                        field: 'address',
                        title: '家庭住址',
                        align: 'center'
                    }, {
                        field: 'entrydate',
                        title: '入职时间',
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
                    $("#id_input").val(row.id);
                    $("#name_input").val(row.name);
                    $("#identity_input").val(row.identity);
                    $("#workerModal input[name='gender']").val([row.gender]);
                    $("#telephone_input").val(row.telephone);
                    $("#address_input").val(row.address);
                    $("#entrydate_input").val(row.entrydate);
                    $("#dtp_input").val(row.entrydate);
                    $("#workerModal").modal({
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
                var url = "${APP_PATH}/worker/list/" + $("#search_input").val();
                oTable.Init(url);
            });

            //=====================新增和修改==========================
            $("#add_btn").click(function () {
                reset_form("#workerModal");
                $("#workerModal").modal({
                    backdrop: "static",
                    draggable: true,
                    overflow: "hidden"
                });
            });

            $("#save_or_update_btn").click(function () {
                identity_input_validate();
                //1.提交数据校验
                if ($("#save_or_update_btn").attr("ajax-validate") === "fail") {
                    return false;
                }
                //2.判断id是否存在,如果不存在新增
                if ($("#id_input").val() == "") {
                    //2-1.发送ajax请求保存
                    $.ajax({
                        url: "${APP_PATH}/worker",
                        type: "POST",
                        data: $("#workerModal form").serialize(),
                        success: function (result) {
                            //后端JSR303校验通过
                            if (result.code == 100) {
                                //1.关闭模态框
                                $("#workerModal").modal('hide');
                                //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                                $("#table").bootstrapTable('refresh');
                            } else {
                                show_validate_msg($("#identity_input"), "fail", result.extend.name);
                            }
                        }
                    });
                } else {
                    //2-1.发送ajax请求更新
                    $.ajax({
                        url: "${APP_PATH}/worker",
                        type: "PUT",
                        data: $("#workerModal form").serialize(),
                        success: function (result) {
                            //后端JSR303校验通过
                            if (result.code == 100) {
                                //1.关闭模态框
                                $("#workerModal").modal('hide');
                                //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                                $("#table").bootstrapTable('refresh');
                            } else {
                                show_validate_msg($("#identity_input"), "fail", result.extend.name);
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
                var workerIds = "";
                var workerNames = "";
                $.each(rows, function (index, row) {
                    workerIds += row.id + "-";
                    workerNames += row.name + ",";
                });
                if (workerIds != "") {
                    workerIds = workerIds.substring(0, workerIds.length - 1);
                    workerNames = workerNames.substring(0, workerNames.length - 1);
                    swal({
                        title: "确定要删除以下员工吗？",
                        text: workerNames,
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
                                url: "${APP_PATH}/worker/" + workerIds,
                                type: "DELETE",
                                success: function (result) {
                                    console.log(result);
                                    $("#table").bootstrapTable('refresh');
                                }
                            });
                        }
                    })
                }

                $.ajax({
                    url: "${APP_PATH}/truck/check/ " + customerIds,
                    type: "GET",
                    success: function (result) {
                        console.log(result);
                        if (result.code == 100) {
                            if (customerIds != "") {
                                customerIds = customerIds.substring(0, customerIds.length - 1);
                                customerNames = customerNames.substring(0, customerNames.length - 1);
                                swal({
                                    title: "确定要删除以下客户吗？",
                                    text: customerNames,
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
                                            url: "${APP_PATH} / customer / " + customerIds,
                                            type: "DELETE",
                                            success: function (result) {
                                                console.log(result);
                                                $("#table").bootstrapTable('refresh');
                                            }
                                        });
                                    }
                                })
                            } else {
                                swal({
                                    title: "请勾选想要删除的客户",
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
                                title: "客户:" + va_ids + "已经被使用，无法删除",
                                icon: "warning",
                                button: "退出"
                            });
                        }
                    }
                });
            });
        };
        return oInit;
    };

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
</script>
</body>
</html>
