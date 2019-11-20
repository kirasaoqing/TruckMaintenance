<%--
  Created by IntelliJ IDEA.
  User: kira
  Date: 2019-10-23
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <!-- Meta tag Keywords -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords" content=""/>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

        function moveToTop() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Styles/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Styles/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/Styles/css/font-awesome.min.css">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
          rel="stylesheet">
    <!-- //Web-Fonts -->
</head>

<body>
<!-- header -->
<jsp:include page="header.jsp"/>
<!-- //header -->
<!-- inner banner -->
<div class="inner-banner-w3ls d-flex flex-column justify-content-center align-items-center">
</div>
<!-- //inner banner -->
<!-- breadcrumbs -->
<nav aria-label="breadcrumb">
    <ol class="breadcrumb d-flex justify-content-center">
        <li class="breadcrumb-item active" aria-current="page">注册</li>
    </ol>
</nav>
<!-- //breadcrumbs -->

<!-- register  -->
<div class="modal-body align-w3">
    <form action="#" method="post" class="p-sm-3">
        <div class="form-group">
            <label for="recipient-name" class="col-form-label">用户名</label>
            <input type="text" class="form-control" placeholder="请输入用户名" name="name" id="recipient-name"
                   required="true">
        </div>
        <%--<div class="form-group">
            <label for="recipient-email" class="col-form-label">邮箱</label>
            <input type="email" class="form-control" placeholder="请输入邮箱" name="Email" id="recipient-email"
                   required="">
        </div>--%>
        <div class="form-group">
            <label for="password1" class="col-form-label">密码</label>
            <input type="password" class="form-control" placeholder="请输入密码" name="Password" id="password1"
                   required="true">
        </div>
        <div class="form-group">
            <label for="password2" class="col-form-label">确认密码</label>
            <input type="password" class="form-control" placeholder="请再次输入密码" name="Confirm Password" id="password2"
                   required="true">
        </div>
        <%--<div class="sub-w3l">
            <div class="sub-w3layouts_hub">
                <input type="checkbox" id="brand2" value="">
                <label for="brand2" class="mb-3 text-secondary">
                    <span></span>I Accept to the Terms & Conditions</label>
            </div>
        </div>--%>
        <div class="form-group">
            <label for="checkcode" class="col-form-label">验证码</label><br>
            <input type="text" class="form-control login-checkcode" placeholder="请输入验证码" name="checkcode" id="checkcode"
                   required="true">
            <img id="form-group:vCode" src="${pageContext.request.contextPath}/assets/Scripts/validatecode.jsp"
                 onclick="javascript:document.getElementById('form-group:vCode').src='${pageContext.request.contextPath }/assets/Scripts/validatecode.jsp?'+Math.random();"/>
        </div>
        <div class="right-w3l">
            <input type="submit" class="form-control bg-theme" value="注册">
        </div>
    </form>
</div>
<!-- //register -->

<!-- footer -->
<jsp:include page="footer.jsp"/>
<!-- //footer -->
<!-- move top icon -->
<a href="javascript:void(0)" class="move-top text-center" onclick="moveToTop()">
    <span class="fa fa-level-up" aria-hidden="true"></span>
</a>
<!-- //move top icon -->

</body>
</html>
