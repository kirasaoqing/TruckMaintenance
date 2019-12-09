<%--
  Created by IntelliJ IDEA.
  User: kira
  Date: 2019-11-23
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>客户</title>
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
<section class="forms" >
    <div class="container-fluid">
        <!-- Page Header-->
        <header>
            <div class="h1 logo text-uppercase"><span>客户</span><strong class="h1 text-primary">信息</strong></div>
        </header>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/customer/add.do" method="post">
                            <div class="card-header d-flex align-items-center">
                                <h3>基本信息</h3>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">客户名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="请输入客户名称" name="name" required>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">单位地址</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="请输入单位地址" name="address">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">联系电话</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="请输入联系电话" name="phone">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">联系人</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="请输入联系人名称" name="contactor">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">联系人电话</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="请输入联系人电话" name="telephone">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="card-header d-flex align-items-center">
                                <h3>开票信息</h3>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">税号</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="请输入税号" name="taxid">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">开户银行</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="请输入开户银行" name="bank">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">银行账户</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="请输入银行账户" name="account">
                                </div>
                            </div>

                            <%--<div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">help text</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control"><span class="text-small text-gray help-block-none">A block of help text that breaks onto a new line and may extend beyond one line.</span>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" name="password" class="form-control">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Placeholder</label>
                                <div class="col-sm-10">
                                    <input type="text" placeholder="placeholder" class="form-control">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-lg-2 form-control-label">Disabled</label>
                                <div class="col-lg-10">
                                    <input type="text" disabled="" placeholder="Disabled input here..." class="form-control">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Checkboxes and radios <br><small class="text-primary">Normal Bootstrap elements</small></label>
                                <div class="col-sm-10">
                                    <div>
                                        <input id="option" type="checkbox" value="">
                                        <label for="option">Option one is this and that—be sure to include why it's great</label>
                                    </div>
                                    <div>
                                        <input id="optionsRadios1" type="radio" checked="" value="option1" name="optionsRadios">
                                        <label for="optionsRadios1">Option one is this and that be sure to include why it's great</label>
                                    </div>
                                    <div>
                                        <input id="optionsRadios2" type="radio" value="option2" name="optionsRadios">
                                        <label for="optionsRadios2">Option two can be something else and selecting it will deselect option one</label>
                                    </div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Inline checkboxes</label>
                                <div class="col-sm-10">
                                    <label class="checkbox-inline">
                                        <input id="inlineCheckbox1" type="checkbox" value="option1"> a
                                    </label>
                                    <label class="checkbox-inline">
                                        <input id="inlineCheckbox2" type="checkbox" value="option2"> b
                                    </label>
                                    <label class="checkbox-inline">
                                        <input id="inlineCheckbox3" type="checkbox" value="option3"> c
                                    </label>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Checkboxes &amp; radios <br><small class="text-primary">Custom elements</small></label>
                                <div class="col-sm-10">
                                    <div class="i-checks">
                                        <input id="checkboxCustom1" type="checkbox" value="" class="form-control-custom">
                                        <label for="checkboxCustom1">Option one</label>
                                    </div>
                                    <div class="i-checks">
                                        <input id="checkboxCustom2" type="checkbox" value="" checked="" class="form-control-custom">
                                        <label for="checkboxCustom2">Option two checked</label>
                                    </div>
                                    <div class="i-checks">
                                        <input id="checkboxCustom" type="checkbox" value="" disabled="" checked="" class="form-control-custom">
                                        <label for="checkboxCustom">Option three checked and disabled</label>
                                    </div>
                                    <div class="i-checks">
                                        <input id="checkboxCustom3" type="checkbox" value="" disabled="" class="form-control-custom">
                                        <label for="checkboxCustom3">Option four disabled</label>
                                    </div>
                                    <div class="i-checks">
                                        <input id="radioCustom1" type="radio" value="option1" name="a" class="form-control-custom radio-custom">
                                        <label for="radioCustom1">Option one</label>
                                    </div>
                                    <div class="i-checks">
                                        <input id="radioCustom2" type="radio" checked="" value="option2" name="a" class="form-control-custom radio-custom">
                                        <label for="radioCustom2">Option two checked</label>
                                    </div>
                                    <div class="i-checks">
                                        <input id="radioCustom3" type="radio" disabled="" checked="" value="option2" class="form-control-custom radio-custom">
                                        <label for="radioCustom3">Option three checked and disabled</label>
                                    </div>
                                    <div class="i-checks">
                                        <input id="radioCustom4" type="radio" disabled="" name="a" class="form-control-custom radio-custom">
                                        <label for="radioCustom4">Option four disabled</label>
                                    </div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Select</label>
                                <div class="col-sm-10 mb-3">
                                    <select name="account" class="form-control">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                    </select>
                                </div>
                                <div class="col-sm-10 offset-sm-2">
                                    <select multiple="" class="form-control">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row has-success">
                                <label class="col-sm-2 form-control-label">Input with success</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control is-valid">
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row has-danger">
                                <label class="col-sm-2 form-control-label">Input with error</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control is-invalid">
                                    <div class="invalid-feedback">Please provide your name.</div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Control sizing</label>
                                <div class="col-sm-10">
                                    <div class="form-group">
                                        <input type="text" placeholder=".input-lg" class="form-control form-control-lg">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Default input" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder=".input-sm" class="form-control form-control-sm">
                                    </div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Column sizing</label>
                                <div class="col-sm-10">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="text" placeholder=".col-md-2" class="form-control">
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" placeholder=".col-md-3" class="form-control">
                                        </div>
                                        <div class="col-md-4">
                                            <input type="text" placeholder=".col-md-4" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="line"> </div>
                            <div class="row">
                                <label class="col-sm-2 form-control-label">Material Inputs</label>
                                <div class="col-sm-10">
                                    <div class="form-group-material">
                                        <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                        <label for="register-username" class="label-material">Username</label>
                                    </div>
                                    <div class="form-group-material">
                                        <input id="register-email" type="email" name="registerEmail" required class="input-material">
                                        <label for="register-email" class="label-material">Email Address      </label>
                                    </div>
                                    <div class="form-group-material">
                                        <input id="register-password" type="password" name="registerPassword" required class="input-material">
                                        <label for="register-password" class="label-material">Password                                                      </label>
                                    </div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Input groups</label>
                                <div class="col-sm-10">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend"><span class="input-group-text">@</span></div>
                                            <input type="text" placeholder="Username" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="text" class="form-control">
                                            <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend"><span class="input-group-text">$</span></div>
                                            <input type="text" class="form-control">
                                            <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <input type="checkbox">
                                                </div>
                                            </div>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <input type="radio">
                                                </div>
                                            </div>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">Button addons</label>
                                <div class="col-sm-10">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <button type="button" class="btn btn-primary">Go!</button>
                                            </div>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="text" class="form-control">
                                            <div class="input-group-append">
                                                <button type="button" class="btn btn-primary">Go!</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="form-group row">
                                <label class="col-sm-2 form-control-label">With dropdowns</label>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <button data-toggle="dropdown" type="button" class="btn btn-outline-secondary dropdown-toggle">Action <span class="caret"></span></button>
                                            <div class="dropdown-menu"><a href="#" class="dropdown-item">Action</a><a href="#" class="dropdown-item">Another action</a><a href="#" class="dropdown-item">Something else here</a>
                                                <div class="dropdown-divider"></div><a href="#" class="dropdown-item">Separated link</a>
                                            </div>
                                        </div>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                            </div>--%>
                            <div class="line"></div>
                            <div class="form-group row">
                                <div class="col-sm-4 offset-sm-2">
                                    <a href="${pageContext.request.contextPath}/home/customerlist.do" class="btn btn-secondary">取消</a>
                                    <button type="submit" class="btn btn-primary">保存</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- JavaScript files-->
<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/popper.js/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/chart.js/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- Main File-->
<script src="${pageContext.request.contextPath}/assets/vendor/js/front.js"></script>

</body>
</html>
