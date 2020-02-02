<%--
  Created by IntelliJ IDEA.
  User: kira
  Date: 2020-01-03
  Time: 09:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>客户信息</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

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
                    <a href="${APP_PATH}/home/home.do">
                        <i class="icon-home"></i>主页
                    </a>
                </li>
                <li>
                    <a href="${APP_PATH}/home/maintenancebill.do">
                        <i class="icon-home"></i>维修服务
                    </a>
                </li>
                <%--<li>
                    <a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse">
                        <i class="icon-interface-windows"></i>维修服务
                    </a>
                    <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                        <li><a href="#">Page</a></li>
                        <li><a href="#">Page</a></li>
                        <li><a href="#">Page</a></li>
                    </ul>
                </li>--%>
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
                <!-- customerlist-2.jsp跳转方法-->
                <!-- <li><a href="${APP_PATH}/customer/customerlist.do"> <i class="icon-screen"> </i>客户信息</a></li>-->
                <!-- customerlist.jsp跳转方法-->
                <li class="active"><a href="${APP_PATH}/home/customer.do"> <i class="icon-screen"> </i>客户信息</a>
                </li>
                <li><a href="${APP_PATH}/home/truck.do"> <i class="icon-picture"> </i>车辆信息</a>
                </li>
                <li><a href="${APP_PATH}/home/worker.do"> <i class="icon-picture"> </i>员工信息</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- page -->
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
    <!-- Counts Section -->
    <section class="dashboard-counts section-padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="float-left">
                                <h2><span class="fa fa-user-circle-o"></span> 客户列表</h2>
                            </div>
                            <%--<div class="float-right">
                                <a href="#"><span class="fa fa-upload"></span> 导入</a>
                            </div>--%>
                        </div>
                        <div class="card-body">
                            <div id="toolbar" class="btn-group">
                                <input type="text" id="input_search" placeholder="请输入客户名称">
                                <button id="search_btn" type="button" class="btn btn-outline-dark">
                                    <span class="fa fa-search"></span> 搜索
                                </button>
                                <button id="add_btn" type="button" class="btn btn-outline-primary">
                                    <span class="fa fa-plus" aria-hidden="true"></span> 新增
                                </button>
                                <%--<button id="edit_btn" type="button" class="btn btn-outline-primary">
                                    <span class="fa fa-edit" aria-hidden="true"></span> 修改
                                </button>--%>
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


<!-- 新增模态框 -->
<div class="modal fade" id="customerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title"><strong class="h1 text-primary">客户信息</strong></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                <form>
                    <div class="col-md-6 pull-left">
                        <div class="card-header d-flex align-items-center">
                            <h3>基本信息</h3>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">客户编码</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入客户编码" name="id"
                                       id="id_input" readonly="readonly">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">客户名称</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入客户名称" name="name"
                                       id="name_input" required>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">单位地址</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入单位地址" name="address"
                                       id="address_input">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">联系电话</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入联系电话" name="phone"
                                       id="phone_input">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">联系人</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入联系人名称" name="contactor"
                                       id="contactor_input">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">电话</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入联系人电话" name="telephone"
                                       id="telephone_input">
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 pull-right">
                        <div class="card-header d-flex align-items-center">
                            <h3>开票信息</h3>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">税号</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入税号" name="taxid"
                                       id="taxid_input">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">开户银行</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入开户银行" name="bank"
                                       id="bank_input">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 form-control-label">银行账户</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" placeholder="请输入银行账户" name="account"
                                       id="account_input">
                                <span class="help-block"></span>
                            </div>
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

<script src="${APP_PATH}/assets/vendor/jquery/jquery.min.js"></script>
<script src="${APP_PATH}/assets/vendor/popper.js/umd/popper.min.js"></script>
<script src="${APP_PATH}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/assets/vendor/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
<script src="${APP_PATH}/assets/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="${APP_PATH}/assets/vendor/chart.js/Chart.min.js"></script>
<script src="${APP_PATH}/assets/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="${APP_PATH}/assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${APP_PATH}/assets/vendor/js/charts-home.js"></script>
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
        var url = "${APP_PATH}/customer";
        var oTable = new TableInit();
        oTable.Init(url);
        //2.初始化Button的点击事件
        /*var oButtonInit = new ButtonInit();
        oButtonInit.Init();*/

        //======================查找=========================
        $("#search_btn").click(function () {
            var url = "${APP_PATH}/customer/" + $("#input_search").val();
            oTable.Init(url);
        });

        //=====================新增和修改==========================
        $("#add_btn").click(function () {
            $("#customerModal").modal({
                backdrop: "static",
                draggable: true,
                overflow: "hidden"
            });
        });

        $("#save_or_update_btn").click(function () {
            name_input_validate();
            //1.提交数据校验
            if ($("#save_or_update_btn").attr("ajax-validate") === "fail") {
                return false;
            }
            //2.判断id是否存在,如果不存在新增
            if($("#id_input").val() == ""){
                //2-1.发送ajax请求保存
                $.ajax({
                    url: "${APP_PATH}/customer",
                    type: "POST",
                    data: $("#customerModal form").serialize(),
                    success: function (result) {
                        //后端JSR303校验通过
                        if (result.code == 100) {
                            //1.关闭模态框
                            $("#customerModal").modal('hide');
                            //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                            $("#table").bootstrapTable('refresh');
                        } else {
                            show_validate_msg($("#name_input"), "fail", result.extend.name);
                        }
                    }
                });
            }else{
                //2-1.发送ajax请求更新
                $.ajax({
                    url: "${APP_PATH}/customer",
                    type: "PUT",
                    data: $("#customerModal form").serialize(),
                    success: function (result) {
                        //后端JSR303校验通过
                        if (result.code == 100) {
                            //1.关闭模态框
                            $("#customerModal").modal('hide');
                            //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                            $("#table").bootstrapTable('refresh');
                        } else {
                            show_validate_msg($("#name_input"), "fail", result.extend.name);
                        }
                    }
                });
            }
        });

        //=====================删除==========================

        //=====================校验==========================
        //客户名称校验
        function name_input_validate() {
            //1.拿到要校验的数据
            var name = $("#name_input").val();
            //2.使用正则表达式
            var nameReg = /(^[a-zA-Z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,30}$)/;
            if (nameReg.test(name)) {
                show_validate_msg("#name_input", "success", "");
                $("#add_btn").attr("ajax-validate", "success");
            } else {
                show_validate_msg("#name_input", "fail", "用户名可以是2-5位中文或者6-16位英文和数字的组合");
                $("#add_btn").attr("ajax-validate", "fail");
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
    });

    var TableInit = function () {
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
                    title: "确定要删除以下客户吗？",
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
                            url: "${APP_PATH}/truck/countByCustomerId.do",
                            type: "GET",
                            data: "customerId=" + row.id,
                            success: function (result) {
                                console.log(result);
                                if (result.code == 100) {
                                    $.ajax({
                                        url: "${APP_PATH}/customer/" + row.id.toString() + ".do",
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
                        field: 'name',
                        title: '客户名称',
                        align: 'center'
                    }, {
                        field: 'phone',
                        title: '联系电话',
                        align: 'center'
                    }, {
                        field: 'address',
                        title: '地址',
                        align: 'center'
                    }, {
                        field: 'contactor',
                        title: '联系人',
                        align: 'center'
                    },
                    /*{
                        field: 'telephone',
                        title: '联系人电话',
                        align: 'center'
                    }*/
                    {
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
                    //console.log(row);
                    //console.log($element);
                    $("#id_input").val(row.id);
                    $("#name_input").val(row.name);
                    $("#address_input").val(row.address);
                    $("#phone_input").val(row.phone);
                    $("#contactor_input").val(row.contactor);
                    $("#telephone_input").val(row.telephone);
                    $("#taxid_input").val(row.taxid);
                    $("#bank_input").val(row.bank);
                    $("#account_input").val(row.account);
                    $("#customerModal").modal({
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
        };
        return oInit;
    };



</script>


</body>
</html>
