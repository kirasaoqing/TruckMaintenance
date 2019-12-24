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
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- datetimepicker-->
    <link rel="stylesheet"
          href="${APP_PATH}/assets/vendor/datetimepicker/bootstrap-datetimepicker.min.css">
    <!-- sweetalert-->
    <script src="${pageContext.request.contextPath}/assets/vendor/sweetalert/sweetalert.min.js"></script>
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
                <li class="active">
                    <a href="${APP_PATH}/home/maintenancebill.do">
                        <i class="icon-home"></i>维修服务
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-bar-chart"></i>图表
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="icon-grid"></i>报表
                    </a>
                </li>
            </ul>
        </div>
        <div class="admin-menu">
            <h5 class="sidenav-heading">系统设置</h5>
            <ul id="side-admin-menu" class="side-menu list-unstyled">
                <li><a href="${APP_PATH}/home/customer.do"><i class="icon-screen"></i>客户信息</a></li>
                <li><a href="${APP_PATH}/home/truck.do"><i class="icon-picture"></i>车辆信息</a></li>
                <li><a href="${APP_PATH}/home/worker.do"><i class="icon-picture"></i>员工信息</a></li>
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
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-primary" id="bill_add_modal_btn">
                                    <span class="fa fa-plus"></span> 新增
                                </button>
                                <button type="button" class="btn btn-outline-danger" id="bill_delete_btn">
                                    <span class="fa fa-trash"></span> 删除
                                </button>
                            </div>
                            <div class="form-inline col-sm-9">
                                <div class="form-group">
                                    <div class="input-group date form_date" data-date="" data-date-format="yyyy年mm月dd日">
                                        <input class="form-control" type="text" value="" id="mt_begindate_input"
                                               placeholder="起始日">
                                        <span class="input-group-addon sr-only"><span
                                                class="glyphicon glyphicon-remove"></span></span>
                                        <span class="input-group-addon sr-only"><span
                                                class="glyphicon glyphicon-calendar"></span></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group date form_date" data-date="" data-date-format="yyyy年mm月dd日">
                                        <input class="form-control" type="text" value="" id="mt_enddate_input"
                                               placeholder="截止日">
                                        <span class="input-group-addon sr-only"><span
                                                class="glyphicon glyphicon-remove"></span></span>
                                        <span class="input-group-addon sr-only"><span
                                                class="glyphicon glyphicon-calendar"></span></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="mt_platenumber_input" placeholder="车牌号">
                                </div>
                                <button class="btn btn-dark" type="button" id="search_mt_btn">
                                    <span class="fa fa-search"></span> 搜索
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-condensed" id="bills_table">
                                    <thead>
                                    <th>
                                        <input type="checkbox" id="check_all"/>
                                    </th>
                                    <th style="width: 10%">单号</th>
                                    <th style="width: 15%">车牌号</th>
                                    <th style="width: 25%">所属客户</th>
                                    <th style="width: 15%">进厂时间</th>
                                    <%--<th style="width: 15%">出厂时间</th>
                                    <th style="width: 15%">结算时间</th>--%>
                                    <th style="width: 15%">状态</th>
                                    <th style="width: 20%">操作</th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer">
                            <!--分页文字信息-->
                            <div class="col-md-5 pull-left" id="page_info_area">

                            </div>
                            <!--分页条信息-->
                            <div class="col-md-7 pull-right">
                                <nav aria-label="Page navigation example" id="page_nav_area">
                                </nav>
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
                <form>
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
                                <input type="hidden" id="enter_input" name="enterdate" value=""/><br/>
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
                                <label for="setting_input" class="col-sm-3 form-control-label">出厂时间</label>
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
                    <div class="col-md-12 row">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" id="item-tab" data-toggle="tab" href="#item">
                                    <h6>维修项目</h6>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="material-tab" data-toggle="tab" href="#material">
                                    <h6>维修材料</h6>
                                </a>
                            </li>
                        </ul>
                        <button type="button" class="btn btn-primary" id="item_material_add_modal_btn" tab-type="item">
                            <span class="fa fa-plus"></span>
                        </button>
                        <button type="button" class="btn btn-outline-danger" id="item_material_delete_btn"
                                tab-type="item">
                            <span class="fa fa-minus"></span>
                        </button>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="item">
                            <table class="table table-hover table-condensed" id="bill_item_table">
                                <thead>
                                <th>
                                    <input type="checkbox" id="item_check_all"/>
                                </th>
                                <th hidden='true'>ID</th>
                                <th hidden='true'>billid</th>
                                <th style="width: 40%">维修项目</th>
                                <th style="width: 30%">维修费用</th>
                                <th style="width: 30%">操作</th>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="material">
                            <table class="table table-hover table-condensed" id="bill_material_table">
                                <thead>
                                <th>
                                    <input type="checkbox" id="material_check_all"/>
                                </th>
                                <th hidden='true'>ID</th>
                                <th hidden='true'>billid</th>
                                <th style="width: 20%">材料名称</th>
                                <th style="width: 15%">单位</th>
                                <th style="width: 15%">数量</th>
                                <th style="width: 15%">单价</th>
                                <th style="width: 15%">金额</th>
                                <th style="width: 20%">操作</th>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="bill_add_btn">保存</button>
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
                <form>
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
                <button type="button" class="btn btn-primary" id="item_add_btn">保存</button>
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
                <form>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="material_billid_input">维修单号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="billId" id="material_billid_input" readonly>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="materialid_input">材料编号</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="id" id="materialid_input" readonly>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="material_input">材料名称</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入材料名称" name="name"
                                   id="material_input">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 form-control-label" for="unit_input">单位</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="请输入材料名称" name="unit" id="unit_input">
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
                <button type="button" class="btn btn-primary" id="material_add_btn">保存</button>
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

<script type="text/javascript">
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
        forceParse: 0,
        pickerPosition: 'top-right'
    });


    /============================列表展示============================/
    var totalRecord, currentPage;//总记录数
    //1.页面加载完成以后，直接去发送ajax请求，要到分页数据
    $(function () {
        //页面加载，去首页
        to_page(1);
    });

    //查询出全部数据&数据翻页
    function to_page(pn) {
        $.ajax({
            url: "${APP_PATH}/maintenancebill/listAll.do",
            data: "pn=" + pn,
            type: "GET",
            success: function (result) {
                //1.解析并显示员工数据
                build_bills_table(result);
                //2.解析并显示分页信息
                build_page_info(result);
                //3.解析并显示分页条
                build_page_nav(result);
                totalRecord = result.extend.pageInfo.total;
            }
        });
    }

    //解析维修单数据
    function build_bills_table(result) {
        //清空
        $("#bills_table tbody").empty();
        var bills = result.extend.pageInfo.list;
        $.each(bills, function (index, item) {
            var id = $("<td hidden='true'></td>").append(item.id);
            var billno = $("<td></td>").append(item.id);
            var platenumber = $("<td></td>").append(item.truck.platenumber);
            var customer = $("<td></td>").append(item.truck.customer.name);
            var enterdate = $("<td></td>").append(item.enterdate);
            /*var appointeddate = $("<td></td>").append(item.appointeddate);
            var settingdate = $("<td></td>").append(item.settingdate);*/
            var status = $("<td></td>").append(item.maintenanceBillStatus.name);
            /*var upadteBtn = $("<button></button>").addClass("btn btn-warning btn-xs bii_update_btn").append($("<sapn></span>").addClass("fa fa-edit")).append("修改");
            //为编辑按钮添加一个自定义属性，来标示当前车辆id
            upadteBtn.attr("bill_update_id", item.id);*/
            var lookBtn = $("<button></button>").addClass("btn btn-info btn-xs bill_look_btn").append($("<sapn></span>").addClass("fa fa-search")).append("查看");
            lookBtn.attr("bill_look_id", item.id);
            var btn = $("<td></td>").addClass("table-btn").append(lookBtn);
            $("<tr></tr>").append("<td><input type='checkbox' class='check_item'></td>").append(id).append(billno).append(platenumber).append(customer).append(enterdate).append(status).append(btn).appendTo("#bills_table tbody");
        });
    }

    //解析分页信息
    function build_page_info(result) {
        //清空
        $("#page_info_area").empty();
        var pageInfo = result.extend.pageInfo;
        var pageNum = pageInfo.pageNum;
        var pages = pageInfo.pages;
        var total = pageInfo.total;
        currentPage = pageNum;
        //当前第${pageInfo.pageNum}页/共${pageInfo.pages}页，共${pageInfo.total}条记录
        $("#page_info_area").append("当前第" + pageNum + "页/共" + pages + "页，共" + total + "条记录");
    }

    //解析分页条
    function build_page_nav(result) {
        //清空
        $("#page_nav_area").empty();
        //构建元素
        var ul = $("<ul></ul>").addClass("pagination");
        var firstPageLi = $("<li></li>").addClass("page-item").append($("<a></a>").addClass("page-link").append("首页"));
        var prePageLi = $("<li></li>").addClass("page-item").append($("<a></a>").addClass("page-link").append("&laquo;"));
        if (result.extend.pageInfo.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        } else {
            //为元素添加点击翻页事件
            firstPageLi.click(function () {
                to_page(1);
            });
            prePageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum - 1);
            });
        }

        var nextPageLi = $("<li></li>").addClass("page-item").append($("<a></a>").addClass("page-link").append("&raquo;"));
        var lastPageLi = $("<li></li>").addClass("page-item").append($("<a></a>").addClass("page-link").append("末页"));
        if (result.extend.pageInfo.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        } else {
            nextPageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum + 1);
            });
            lastPageLi.click(function () {
                to_page(result.extend.pageInfo.pages);
            });
        }

        //构造首页和前一页
        ul.append(firstPageLi).append(prePageLi);
        //构造页码
        $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {
            var numLi = $("<li></li>").addClass("page-item").append($("<a></a>").addClass("page-link").append(item));
            if (result.extend.pageInfo.pageNum == item) {
                numLi.addClass("active");
            }
            numLi.click(function () {
                to_page(item);
            });
            ul.append(numLi);
        });

        //构造下一页和末页
        ul.append(nextPageLi).append(lastPageLi).appendTo("#page_nav_area");
    }

    /=================================查看明细====================================/
    $(document).on("click", ".bill_look_btn", function () {
        getBill($(this).attr("bill_look_id"));
        //getCustomers();
        getStatus();
        getTrucks();
        $("#billsModal").modal({
            backdrop: "static"
        });
    });

    //查出所有的状态并显示在下拉列表中
    function getStatus() {
        //清空下拉列表
        $("#status_select").empty();
        $.ajax({
            url: "${APP_PATH}/billStatus/getAllBillStatus.do",
            type: "GET",
            success: function (result) {
                $.each(result.extend.billStatuses, function () {
                    var option = $("<option></option>").append(this.name).attr("value", this.id);
                    option.appendTo("#status_select");
                });
            }
        });
    }

    //查出所有的车辆信息并显示在下拉列表中
    function getTrucks() {
        //清空下拉列表
        $("#truck_select").empty();
        $.ajax({
            url: "${APP_PATH}/truck/getAllTrucks.do",
            type: "GET",
            success: function (result) {
                $.each(result.extend.trucks, function () {
                    var option = $("<option></option>").append(this.platenumber).attr("value", this.id);
                    option.appendTo("#truck_select");
                });
            }
        });
    }

    function getBill(id) {
        $.ajax({
            url: "${APP_PATH}/maintenancebill/" + id + ".do",
            type: "GET",
            success: function (result) {
                var billData = result.extend.bill;
                $("#id_input").val(billData.id);
                $("#status_select").val([billData.statusId]);
                $("#truck_select").val([billData.truckId]);
                /*$("#billsModal select[name=status_select]").val([billData.statusId]);
                $("#billsModal select[name=truck_select]").val([billData.truckId]);*/
                $("#customer_input").val(billData.truck.customer.name);
                $("#mileage_input").val(billData.entrymileage);
                $("#enterdate_input").val(billData.enterdate);
                $("#appointeddate_input").val(billData.appointeddate);
                $("#settingdate_input").val(billData.settingdate);
                $("#item_billid_input").val(billData.id);
                $("#material_billid_input").val(billData.id);
                build_bills_items_table(billData);
                build_bills_materials_table(billData);
            }
        });
    }

    //解析维修单-明细数据
    function build_bills_items_table(billData) {
        //清空
        $("#bill_item_table tbody").empty();
        var items = billData.maintenanceItemList;
        $.each(items, function (index, item) {
            var id = $("<td  hidden='true'></td>").append(item.id);
            var billid = $("<td  hidden='true'></td>").append(billData.id);
            var name = $("<td></td>").append(item.item);
            var itemfees = $("<td></td>").append(item.itemfees);
            /*var upadteBtn = $("<button></button>").addClass("btn btn-warning btn-xs item_update_btn").append($("<sapn></span>").addClass("fa fa-edit")).append("修改");
            //为编辑按钮添加一个自定义属性，来标示当前车辆id
            upadteBtn.attr("item_update_id", item.id);*/
            var lookBtn = $("<button></button>").attr("type", "button").addClass("btn btn-info btn-xs item_look_btn").append($("<sapn></span>").addClass("fa fa-search")).append("查看");
            lookBtn.attr("item_look_id", item.id);
            var btn = $("<td></td>").addClass("table-btn").append(lookBtn);
            $("<tr></tr>").append("<td><input type='checkbox' class='item_check_item'></td>").append(id).append(billid).append(name).append(itemfees).append(btn).appendTo("#bill_item_table tbody");
        });
    }

    //解析维修单-材料数据
    function build_bills_materials_table(billData) {
        //清空
        $("#bill_material_table tbody").empty();
        var materials = billData.maintenanceMaterialList;
        $.each(materials, function (index, item) {
            var id = $("<td  hidden='true'></td>").append(item.id);
            var billid = $("<td  hidden='true'></td>").append(billData.id);
            var name = $("<td></td>").append(item.name);
            var unit = $("<td></td>").append(item.unit);
            var quantity = $("<td></td>").append(item.quantity);
            var price = $("<td></td>").append(item.price);
            var amount = $("<td></td>").append(item.amount);
            /*var upadteBtn = $("<button></button>").addClass("btn btn-warning btn-xs material_update_btn").append($("<sapn></span>").addClass("fa fa-edit")).append("修改");
            //为编辑按钮添加一个自定义属性，来标示当前车辆id
            upadteBtn.attr("material_update_id", item.id);*/
            var lookBtn = $("<button></button>").attr("type", "button").addClass("btn btn-info btn-xs material_look_btn").append($("<sapn></span>").addClass("fa fa-search")).append("查看");
            lookBtn.attr("material_look_id", item.id);
            var btn = $("<td></td>").addClass("table-btn").append(lookBtn);
            $("<tr></tr>").append("<td><input type='checkbox' class='material_check_item'></td>").append(id).append(billid).append(name).append(unit).append(quantity).append(price).append(amount).append(btn).appendTo("#bill_material_table tbody");
        });
    }

    /=============================新增表单===============================/
    $("#bill_add_modal_btn").click(function () {
        reset_form("#billsModal form");
        $("#bill_material_table tbody").empty();
        $("#bill_item_table tbody").empty();
        $("#bill_add_btn").show();
        $("#bill_update_btn").hide();
        getStatus();
        getTrucks();
        $("#billsModal").modal({
            backdrop: "static"
        });
    });

    $("#truck_select").change(function () {
        $("#customer_input").empty();
        var id = $(this).val();
        $.ajax({
            url: "${APP_PATH}/truck/" + id + ".do",
            type: "GET",
            success: function (result) {
                var truckData = result.extend.truck;
                $("#customer_input").val(truckData.customer.name);
            }
        });
    });

    $("#bill_add_btn").click(function () {
        if ($("#enter_input").val() == "") {
            $("#enter_input").removeAttr("name");
        }
        if ($("#appointed_input").val() == "") {
            $("#appointed_input").removeAttr("name");
        }
        if ($("#setting_input").val() == "") {
            $("#setting_input").removeAttr("name");
        }

        var bills = $("#billsModal form").serialize();

        //如果维修单号不存在，则新增维修单
        if ($("#id_input").val() == "") {
            $.ajax({
                url: "${APP_PATH}/maintenancebill/maintenancebill.do",
                type: "POST",
                data: bills,
                success: function (result) {
                    $("#id_input").val(result.extend.billid);
                    $("#item_billid_input").val(result.extend.billid);
                    $("#material_billid_input").val(result.extend.billid);
                    if (result.code == 100) {
                        $("#billsModal").modal("hide");
                        to_page(currentPage);
                    } else if (result.code == 200) {
                        swal({
                            title: "车辆信息保存失败",
                            icon: "error",
                            button: "确定"
                        });
                    }
                }
            });
        } else {//否则更新
            $.ajax({
                url: "${APP_PATH}/maintenancebill/maintenancebill.do",
                type: "PUT",
                data: bills,
                success: function (result) {
                    if (result.code == 100) {
                        $("#billsModal").modal("hide");
                        to_page(currentPage);
                    } else if (result.code == 200) {
                        swal({
                            title: "车辆信息修改失败",
                            icon: "error",
                            button: "确定"
                        });
                    }
                }
            })

        }
    });

    //重置表单
    function reset_form(ele) {
        //$(ele)[0].reset();
        $(ele).find("*").removeClass("is-invalid is-valid invalid-feedback valid-feedback");
        $(ele).find(".help-block").text("");
        $(ele).find("*").val("");
    }

    $("#item-tab").click(function () {
        $("#item_material_add_modal_btn").attr("tab-type", "item");
        $("#item_material_delete_btn").attr("tab-type", "item");
    });

    $("#material-tab").click(function () {
        $("#item_material_add_modal_btn").attr("tab-type", "material");
        $("#item_material_delete_btn").attr("tab-type", "material");
    });

    $("#item_material_add_modal_btn").click(function () {
        var tabtype = $(this).attr("tab-type");
        if (tabtype == "item") {
            //$("#item_update_btn").hide();
            //reset_form("#itemModal form");
            $("#itemModal").modal({
                backdrop: "static"
            });
        } else if (tabtype == "material") {
            //$("#material_update_btn").hide();
            //reset_form("#materialModal form");
            $("#materialModal").modal({
                backdrop: "static"
            });
        }
    });


    $(document).on("click", ".item_look_btn", function () {
        $.ajax({
            url: "${APP_PATH}/maintenanceitem/" + $(this).attr("item_look_id") + ".do",
            type: "GET",
            success: function (result) {
                var itemData = result.extend.item;
                $("#item_billid_input").val(itemData.billId);
                $("#itemid_input").val(itemData.id);
                $("#item_input").val(itemData.item);
                $("#itemfees_input").val(itemData.itemfees);
                $("#itemModal").modal({
                    backdrop: "static"
                });
            }
        });
    });

    $(document).on("click", ".material_look_btn", function () {
        $.ajax({
            url: "${APP_PATH}/maintenancematerial/" + $(this).attr("material_look_id") + ".do",
            type: "GET",
            success: function (result) {
                var materialData = result.extend.material;
                $("#material_billid_input").val(materialData.billId);
                $("#materialid_input").val(materialData.id);
                $("#material_input").val(materialData.name);
                $("#unit_input").val(materialData.unit);
                $("#quantity_input").val(materialData.quantity);
                $("#price_input").val(materialData.price);
                $("#amount_input").val(materialData.amount);
                $("#materialModal").modal({
                    backdrop: "static"
                });
            }
        });
    });

    /============================维修项目================================/
    //新增
    $("#item_add_btn").click(function () {
        if ($("#itemid_input").val() == "") {
            $.ajax({
                url: "${APP_PATH}/maintenanceitem/maintenanceitem.do",
                type: "POST",
                data: $("#itemModal form").serialize(),
                success: function (result) {
                    if (result.code == 100) {
                        $("#itemModal").modal("hide");
                        build_items_table();
                    } else if (result.code == 200) {
                        swal({
                            title: "维修项目保存失败",
                            icon: "eroor",
                            button: "确定"
                        });
                    }
                }
            });
        } else {
            $.ajax({
                url: "${APP_PATH}/maintenanceitem/maintenanceitem.do",
                type: "PUT",
                data: $("#itemModal form").serialize(),
                success: function (result) {
                    if (result.code == 100) {
                        $("#itemModal").modal("hide");
                        build_items_table();
                    } else if (result.code == 200) {
                        swal({
                            title: "维修项目修改失败",
                            icon: "success",
                            button: "确定"
                        });
                    }
                }
            });
        }
    });

    //返回展示项目列表
    function build_items_table() {
        $.ajax({
            url: "${APP_PATH}/maintenanceitem/getItemsByBillId.do",
            data: "billId=" + $("#id_input").val(),
            type: "GET",
            success: function (result) {
                console.log(result);

                //清空
                $("#bill_item_table tbody").empty();
                var items = result.extend.maintenanceItems;
                $.each(items, function (index, item) {
                    var id = $("<td hidden='true'></td>").append(item.id);
                    var name = $("<td></td>").append(item.item);
                    var itemfees = $("<td></td>").append(item.itemfees);
                    /*var upadteBtn = $("<button></button>").addClass("btn btn-warning btn-xs item_update_btn").append($("<sapn></span>").addClass("fa fa-edit")).append("修改");
                    //为编辑按钮添加一个自定义属性，来标示当前车辆id
                    upadteBtn.attr("item_update_id", item.id);*/
                    var lookBtn = $("<button></button>").attr("type", "button").addClass("btn btn-info btn-xs item_look_btn").append($("<sapn></span>").addClass("fa fa-search")).append("查看");
                    lookBtn.attr("item_look_id", item.id);
                    var btn = $("<td></td>").addClass("table-btn").append(lookBtn);
                    $("<tr></tr>").append("<td><input type='checkbox' class='item_check_item'></td>").append(id).append(name).append(itemfees).append(btn).appendTo("#bill_item_table tbody");
                });
            }
        });
    }

    $("#item_check_all").click(function () {
        $(".item_check_item").prop("checked", $("#item_check_all").prop("checked"));
    });
    $(document).on("click", ".item_check_item", function () {
        $("#item_check_all").prop("checked", $(".item_check_item:checked").length == $(".item_check_item").length);
    });

    /==========================维修材料=======================/
    //新增
    $("#material_add_btn").click(function () {
        if ($("#materialid_input") == "") {
            $.ajax({
                url: "${APP_PATH}/maintenancematerial/maintenancematerial.do",
                type: "POST",
                data: $("#materialModal form").serialize(),
                success: function (result) {
                    if (result.code == 100) {
                        $("#materialModal").modal("hide");
                        build_materials_table();
                    } else if (result.code == 200) {
                        swal({
                            title: "维修材料保存失败",
                            icon: "success",
                            button: "确定"
                        });
                    }
                }
            });
        } else {
            $.ajax({
                url: "${APP_PATH}/maintenancematerial/maintenancematerial.do",
                type: "PUT",
                data: $("#materialModal form").serialize(),
                success: function (result) {
                    if (result.code == 100) {
                        $("#materialModal").modal("hide");
                        build_materials_table();
                    } else if (result.code == 200) {
                        swal({
                            title: "维修材料保存失败",
                            icon: "success",
                            button: "确定"
                        });
                    }
                }
            });
        }
    });

    //返回展示材料列表
    function build_materials_table() {
        $.ajax({
            url: "${APP_PATH}/maintenancematerial/getMaterialsByBillId.do",
            data: "billId=" + $("#id_input").val(),
            type: "GET",
            success: function (result) {
                //清空
                $("#bill_material_table tbody").empty();
                var materials = result.extend.maintenanceMaterials;
                $.each(materials, function (index, item) {
                    var id = $("<td hidden='true'></td>").append(item.id);
                    var name = $("<td></td>").append(item.name);
                    var unit = $("<td></td>").append(item.unit);
                    var quantity = $("<td></td>").append(item.quantity);
                    var price = $("<td></td>").append(item.price);
                    var amount = $("<td></td>").append(item.amount);
                    /*var upadteBtn = $("<button></button>").addClass("btn btn-warning btn-xs material_update_btn").append($("<sapn></span>").addClass("fa fa-edit")).append("修改");
                    //为编辑按钮添加一个自定义属性，来标示当前车辆id
                    upadteBtn.attr("material_update_id", item.id);*/
                    var lookBtn = $("<button></button>").attr("type", "button").addClass("btn btn-info btn-xs material_look_btn").append($("<sapn></span>").addClass("fa fa-search")).append("查看");
                    lookBtn.attr("material_look_id", item.id);
                    var btn = $("<td></td>").addClass("table-btn").append(lookBtn);
                    $("<tr></tr>").append("<td><input type='checkbox' class='material_check_item'></td>").append(id).append(name).append(unit).append(quantity).append(price).append(amount).append(btn).appendTo("#bill_material_table tbody");
                });
            }
        });
    }

    $("#material_check_all").click(function () {
        $(".material_check_item").prop("checked", $("#material_check_all").prop("checked"));
    });
    $(document).on("click", ".material_check_item", function () {
        $("#material_check_all").prop("checked", $(".material_check_item:checked").length == $(".material_check_item").length);
    });

    $("#item_material_delete_btn").click(function () {
        var tabtype = $(this).attr("tab-type");
        if (tabtype == "item") {
            var itemIds = "";
            var items = "";
            $.each($(".item_check_item:checked"), function () {
                itemIds += $(this).parents("tr").find("td:eq(1)").text() + "-";
                items += $(this).parents("tr").find("td:eq(2)").text() + ",";
            });
            if (itemIds != "") {
                itemIds = itemIds.substring(0, itemIds.length - 1);
                items = items.substring(0, items.length - 1);
                swal({
                    title: "确定要删除以下维修项目吗？",
                    text: items,
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
                            url: "${APP_PATH}/maintenanceitem/" + itemIds + ".do",
                            type: "DELETE",
                            success: function (result) {
                                build_items_table();
                            }
                        });
                    }
                })
            } else {
                swal({
                    title: "请勾选想要删除的维修项目",
                    icon: "warning",
                    button: "退出"
                });
            }
        } else if (tabtype == "material") {
            var materialIds = "";
            var materials = "";
            $.each($(".material_check_item:checked"), function () {
                materialIds += $(this).parents("tr").find("td:eq(1)").text() + "-";
                materials += $(this).parents("tr").find("td:eq(2)").text() + ",";
            });
            if (materialIds != "") {
                materialIds = materialIds.substring(0, materialIds.length - 1);
                materials = materials.substring(0, materials.length - 1);
                swal({
                    title: "确定要删除以下维修材料吗？",
                    text: materials,
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
                            url: "${APP_PATH}/maintenancematerial/" + materialIds + ".do",
                            type: "DELETE",
                            success: function (result) {
                                build_materials_table();
                            }
                        });
                    }
                })
            } else {
                swal({
                    title: "请勾选想要删除的维修材料",
                    icon: "warning",
                    button: "退出"
                });
            }
        }
    });

    /============================删除维修单===============================/
    $("#check_all").click(function () {
        $(".check_item").prop("checked", $("#check_all").prop("checked"));
    });
    $(document).on("click", ".check_item", function () {
        $("#check_all").prop("checked", $(".check_item:checked").length == $(".check_item").length);
    });

    $("#bill_delete_btn").click(function () {
        var billIds = "";
        var platenumbers = "";
        $.each($(".check_item:checked"), function () {
            billIds += $(this).parents("tr").find("td:eq(1)").text() + "-";
            platenumbers += $(this).parents("tr").find("td:eq(3)").text() + ",";
        });
        if (billIds != "") {
            billIds = billIds.substring(0, billIds.length - 1);
            platenumbers = platenumbers.substring(0, platenumbers.length - 1);
            swal({
                title: "确定要删除以下车牌号的维修单吗？",
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
                        url: "${APP_PATH}/maintenancebill/" + billIds + ".do",
                        type: "DELETE",
                        success: function (result) {
                            to_page(currentPage);
                        }
                    });
                }
            })
        } else {
            swal({
                title: "请勾选想要删除的维修单",
                icon: "warning",
                button: "退出"
            });
        }
    });


    /=================================查找==================================/
    $("#search_mt_btn").click(function () {
        var platenumber = $("#mt_platenumber_input").val();
        var beginDate = $("#mt_begindate_input").val();
        var endDate = $("#mt_enddate_input").val();
        var truckId;
        $.ajax({
            url: "${APP_PATH}/truck/getTruckByPN.do",
            type: "GET",
            data: "platenumber=" + platenumber,
            success: function (result) {
                if(result.code == 100 && result.extend.truck != null){
                    truckId = result.extend.truck.id;
                }
                $.ajax({
                    url: "${APP_PATH}/maintenancebill/list.do",
                    type: "GET",
                    data: {"beginDate": beginDate, "endDate": endDate, "truckId": truckId},
                    success: function (result) {
                        console.log(result);
                        if(result.code == 100 && result.extend.pageInfo != null){
                            //1.解析并显示员工数据
                            build_bills_table(result);
                            //2.解析并显示分页信息
                            build_page_info(result);
                            //3.解析并显示分页条
                            build_page_nav(result);
                        }
                    }
                });
            }
        });
    })
</script>
</body>
</html>
