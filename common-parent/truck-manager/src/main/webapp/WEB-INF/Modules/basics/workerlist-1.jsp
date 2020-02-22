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
                <li>
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
                <li><a href="${APP_PATH}/home/customer.do"> <i class="icon-screen"> </i>客户信息</a>
                </li>
                <li><a href="${APP_PATH}/home/truck.do"> <i class="icon-picture"> </i>车辆信息</a>
                </li>
                <li class="active"><a href="${pageContext.request.contextPath}/home/worker.do"> <i
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
                <li class="breadcrumb-item active">员工</li>
            </ul>
        </div>
    </div>
    <section class="dashboard-counts section-padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h2><span class="fa fa-user-circle-o"></span> 员工列表</h2>
                        </div>
                        <div class="card-deck">
                            <div class="col-lg-6">
                                <button type="button" class="btn btn-primary" id="worker_add_modal_btn">
                                    <span class="fa fa-plus"></span> 新增
                                </button>
                                <button type="button" class="btn btn-outline-danger" id="worker_delete_btn">
                                    <span class="fa fa-trash"></span> 删除
                                </button>
                            </div>
                            <div class="col-lg-6">
                                <input type="text" id="search_worker_input" placeholder="请输入员工姓名" class="col-9">
                                <button class="btn btn-dark" type="button" id="search_worker_btn">
                                    <span class="fa fa-search"></span> 搜索
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover" id="worker_table">
                                    <thead>
                                    <th>
                                        <input type="checkbox" id="check_all"/>
                                    </th>
                                    <th hidden="true">ID</th>
                                    <th hidden="true">身份证号</th>
                                    <th style="width: 15%">姓名</th>
                                    <th style="width: 10%">性别</th>
                                    <th style="width: 15%">电话</th>
                                    <th style="width: 30%">家庭地址</th>
                                    <th style="width: 15%">入职时间</th>
                                    <th style="width: 15%">操作</th>
                                    </thead>
                                    <tbody>

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
                <form>
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
                            <input class="form-control col-sm-8" type="text" id="entrydate" value="" readonly>
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
                        <input type="hidden" id="dtp_input" name="entrydate" /><br/>
                    </div>
                </form>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="worker_add_btn">保存</button>
                <button type="button" class="btn btn-primary" id="worker_update_btn">修改</button>
            </div>
        </div>
    </div>
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
<script src="${APP_PATH}/assets/vendor/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="${APP_PATH}/assets/vendor/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- Main File-->
<script src="${pageContext.request.contextPath}/assets/vendor/js/front.js"></script>

<script type="text/javascript">

    /==============================列表展示===========================/
    var totalRecord, currentPage, search_workerName;//总记录数
    //1.页面加载完成以后，直接去发送ajax请求，要到分页数据
    $(function () {
        //页面加载，去首页
        to_page(1);

    });

    //查询出全部数据&数据翻页
    function to_page(pn) {
        $.ajax({
            url: "${APP_PATH}/worker/list.do",
            data: "pn=" + pn,
            type: "GET",
            success: function (result) {
                //1.解析并显示员工数据
                build_workers_table(result);
                //2.解析并显示分页信息
                build_page_info(result);
                //3.解析并显示分页条
                build_page_nav(result);
                totalRecord = result.extend.pageInfo.total;
            }
        });
    }

    //解析员工数据
    function build_workers_table(result) {
        //清空
        $("#worker_table tbody").empty();
        var workers = result.extend.pageInfo.list;
        $.each(workers, function (index, item) {
            //alert(item.name);
            var id = $("<td hidden='true'></td>").append(item.id)
            var identity = $("<td hidden='true'></td>").append(item.identity);
            var name = $("<td></td>").append(item.name);
            var gender = $("<td></td>").append(item.gender == "M" ? "男" : "女");
            var telephone = $("<td></td>").append(item.telephone);
            var address = $("<td></td>").append(item.address);
            var entryDate = $("<td></td>").append(item.entrydate);
            var upadteBtn = $("<button></button>").addClass("btn btn-warning btn-xs update_btn").append($("<sapn></span>").addClass("fa fa-edit")).append("修改");
            //为编辑按钮添加一个自定义属性，来标示当前员工id
            upadteBtn.attr("update_id", item.id);
            var lookBtn = $("<button></button>").addClass("btn btn-info btn-xs look_btn").append($("<sapn></span>").addClass("fa fa-search")).append("查看");
            lookBtn.attr("look_id", item.id);
            var btn = $("<td></td>").addClass("table-btn").append(lookBtn).append(" ").append(upadteBtn);
            $("<tr></tr>").append("<td><input type='checkbox' class='check_item'></td>").append(id).append(identity).append(name).append(gender).append(telephone).append(address).append(entryDate).append(btn).appendTo("#worker_table tbody");
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

    /================================新增===================================/
    $("#worker_add_modal_btn").click(function () {
        //清除表单数据（表单重置）--dom对象
        reset_form("#workerModal form");
        $("#worker_add_btn").show();
        $("#worker_update_btn").hide();
        $("#name_input").attr("readonly", false);
        $("#identity_input").attr("readonly", false);
        $("#telephone_input").attr("readonly", false);
        $("#address_input").attr("readonly", false);

        //发送ajax请求，查出所有的车型和客户信息，显示在下拉列表中
        //显示模态框
        $("#workerModal").modal({
            backdrop: "static",
            draggable: true,
            overflow: "hidden"
        });
    });

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

    //模态框中填写的表单数据提交给服务器进行保存
    $("#worker_add_btn").click(function () {
        identity_input_validate();
        //1.提交数据校验
        if ($("#worker_add_btn").attr("ajax-validate") === "fail") {
            return false;
        }
        if($("#dtp_input").val() == ""){
            $("#dtp_input").removeAttr("name");
        }
        console.log($("#workerModal form").serialize());
        //2.发送ajax请求保存
        $.ajax({
            url: "${APP_PATH}/worker/worker.do",
            type: "POST",
            data: $("#workerModal form").serialize(),
            success: function (result) {
                console.log(result);
                //后端JSR303校验通过
                if (result.code == 100) {
                    //1.关闭模态框
                    $("#workerModal").modal('hide');
                    //2.来到最后一页，显示新添加数据，也就是发送ajax请求显示最后一页数据
                    to_page(totalRecord);
                } else {
                    show_validate_msg($("#identity_input"), "fail", result.extend.name);
                }
            }
        });
    });

    //身份证号校验
    function identity_input_validate() {
        //1.拿到要校验的数据
        var identity = $("#identity_input").val();
        //2.使用正则表达式
        var IDReg = /^[1-9]\d{5}(18|19|20)\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
        if (IDReg.test(identity)) {
            show_validate_msg("#identity_input", "success", "");
            $("#worker_add_btn").attr("ajax-validate", "success");
        } else {
            show_validate_msg("#identity_input", "fail", "请输入正确的身份证号码");
            $("#worker_add_btn").attr("ajax-validate", "fail");
        }
    }

    //校验信息显示
    function show_validate_msg(ele, status, msg) {
        //清除当前元素的校验状态
        reset_form(ele)
        /*$(ele).removeClass("is-invalid is-valid");
        $(ele).next("span").removeClass("invalid-feedback valid-feedback");*/
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

    //车牌号输入框内容改变后做用户名唯一性校验
    $("#identity_input").change(function () {
        $.ajax({
            url: "${APP_PATH}/worker/checkWorkerByIdentity.do",
            type: "GET",
            data: "identity=" + $("#identity_input").val(),
            success: function (result) {
                if (result.code == 100) {
                    show_validate_msg("#identity_input", "success", "新员工");
                    $("#worker_add_btn").attr("ajax-validate", "success");
                } else {
                    show_validate_msg("#identity_input", "fail", result.extend.va_msg);
                    $("#worker_add_btn").attr("ajax-validate", "fail");
                }
            }
        });
    });

    /================================删除===================================/
    //checkbox全选全不选
    $("#check_all").click(function () {
        //原生属性用prop，自定义属性用attr
        $(".check_item").prop("checked", $("#check_all").prop("checked"));
    });
    $(document).on("click", ".check_item", function () {
        var flag = $(".check_item:checked").length == $(".check_item").length;
        $("#check_all").prop("checked", flag);
    });

    //删除按钮事件
    $("#worker_delete_btn").click(function () {
        var workerIds = "";
        var workerIdentity = "";
        var workerNames = "";
        $.each($(".check_item:checked"), function () {
            workerIds += $(this).parents("tr").find("td:eq(1)").text() + "-";
            workerIdentity += $(this).parents("tr").find("td:eq(2)").text() + ",";
            workerNames += $(this).parents("tr").find("td:eq(3)").text() + ",";
        });
        if (workerIds != "") {
            workerIds = workerIds.substring(0, workerIds.length - 1);
            workerIdentity = workerIdentity.substring(0, workerIdentity.length - 1);
            workerNames = workerNames.substring(0, workerNames.length - 1);
            swal({
                title: "确定要删除以下员工信息吗？",
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
                        url: "${APP_PATH}/worker/" + workerIds + ".do",
                        type: "DELETE",
                        success: function (result) {
                            to_page(currentPage);
                        }
                    });
                }
            })
        } else {
            swal({
                title: "请勾选想要删除的员工",
                icon: "warning",
                button: "退出"
            });
        }
    });


    /==========================查看&修改============================/
    //点击修改，弹出模态框
    //我们在按钮创建之前就绑定了click，所以绑定不上
    //绑定点击.live()，jquery新版没有live，使用on代替
    $(document).on("click", ".update_btn", function () {
        //查处客户信息
        getWorker($(this).attr("update_id"));
        $("#worker_update_btn").show();
        $("#worker_add_btn").hide();
        $("#worker_update_btn").attr("update_id", $(this).attr("update_id"));
        $("#name_input").attr("readonly", true);
        $("#identity_input").attr("readonly", true);
        $("#telephone_input").attr("readonly", false);
        $("#address_input").attr("readonly", false);
        //显示模态框
        $("#workerModal").modal({
            backdrop: "static",
            draggable: true,
            overflow: "hidden"
        });
    });

    //点击查看，弹出模态框
    $(document).on("click", ".look_btn", function () {
        //查处客户信息
        getWorker($(this).attr("look_id"));
        $("#worker_update_btn").hide();
        $("#worker_add_btn").hide();
        $("#worker_update_btn").hide();
        $("#name_input").attr("readonly", true);
        $("#identity_input").attr("readonly", true);
        $("#telephone_input").attr("readonly", true);
        $("#address_input").attr("readonly", true);
        //显示模态框
        $("#workerModal").modal({
            backdrop: "static",
            draggable: true,
            overflow: "hidden"
        });
    });

    function getWorker(id) {
        $.ajax({
            url: "${APP_PATH}/worker/" + id + ".do",
            type: "GET",
            success: function (result) {
                //console.log(result);
                var workerData = result.extend.worker;
                $("#name_input").val(workerData.name);
                $("#identity_input").val(workerData.identity);
                $("#workerModal input[name='gender']").val([workerData.gender]);
                $("#telephone_input").val(workerData.telephone);
                $("#address_input").val(workerData.address);
                $("#entrydate").val(workerData.entrydate);
            }
        });
    }

    //模态框中修改按钮点击事件
    $("#worker_update_btn").click(function () {
        //1.表单校验
        //2。数据提交
        $.ajax({
            url: "${APP_PATH}/worker/" + $(this).attr("update_id") + ".do",
            method: "PUT",
            data: $("#workerModal form").serialize(),
            success: function (result) {
                //2.关闭对话框
                $("#workerModal").modal("hide");
                //3.回到列表页面
                to_page(currentPage);
            }
        });
    });

    /=========================查找=======================/
    //搜索
    $("#search_worker_btn").click(function () {
        search_workerName = "%" + $("#search_worker_input").val() + "%";
        search_to_page(1);
    });

    //搜索数据&数据翻页
    function search_to_page(pn) {
        $.ajax({
            url: "${APP_PATH}/worker/getWorksByName.do",
            data: {"pn": pn, "name": search_workerName},
            type: "GET",
            success: function (result) {
                if(result.code == 100){
                    //1.解析并显示员工数据
                    build_search_workers_table(result);
                    //2.解析并显示分页信息
                    build_search_page_info(result);
                    //3.解析并显示分页条
                    build_search_page_nav(result);
                }else if(result.code == 200){
                    $("#worker_table tbody").empty();
                    $("#page_info_area").empty();
                    $("#page_nav_area").empty();
                    swal({
                        title: result.extend.va_msg,
                        icon: "warning",
                        button: "退出"
                    });
                }

            }
        });
    }

    //解析员工数据
    function build_search_workers_table(result) {
        //清空
        $("#worker_table tbody").empty();
        var workers = result.extend.pageInfo.list;
        $.each(workers, function (index, item) {
            //alert(item.name);
            var id = $("<td hidden='true'></td>").append(item.id)
            var identity = $("<td hidden='true'></td>").append(item.identity);
            var name = $("<td></td>").append(item.name);
            var gender = $("<td></td>").append(item.gender == "M" ? "男" : "女");
            var telephone = $("<td></td>").append(item.telephone);
            var address = $("<td></td>").append(item.address);
            var entryDate = $("<td></td>").append(item.entrydate);
            var upadteBtn = $("<button></button>").addClass("btn btn-warning btn-xs update_btn").append($("<sapn></span>").addClass("fa fa-edit")).append("修改");
            //为编辑按钮添加一个自定义属性，来标示当前员工id
            upadteBtn.attr("update_id", item.id);
            var lookBtn = $("<button></button>").addClass("btn btn-info btn-xs look_btn").append($("<sapn></span>").addClass("fa fa-search")).append("查看");
            lookBtn.attr("look_id", item.id);
            var btn = $("<td></td>").addClass("table-btn").append(lookBtn).append(" ").append(upadteBtn);
            $("<tr></tr>").append("<td><input type='checkbox' class='check_item'></td>").append(id).append(identity).append(name).append(gender).append(telephone).append(address).append(entryDate).append(btn).appendTo("#worker_table tbody");
        });
    }

    //解析分页信息
    function build_search_page_info(result) {
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
    function build_search_page_nav(result) {
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
                search_to_page(1);
            });
            prePageLi.click(function () {
                search_to_page(result.extend.pageInfo.pageNum - 1);
            });
        }

        var nextPageLi = $("<li></li>").addClass("page-item").append($("<a></a>").addClass("page-link").append("&raquo;"));
        var lastPageLi = $("<li></li>").addClass("page-item").append($("<a></a>").addClass("page-link").append("末页"));
        if (result.extend.pageInfo.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        } else {
            nextPageLi.click(function () {
                search_to_page(result.extend.pageInfo.pageNum + 1);
            });
            lastPageLi.click(function () {
                search_to_page(result.extend.pageInfo.pages);
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
                search_to_page(item);
            });
            ul.append(numLi);
        });

        //构造下一页和末页
        ul.append(nextPageLi).append(lastPageLi).appendTo("#page_nav_area");
    }
</script>

</body>
</html>