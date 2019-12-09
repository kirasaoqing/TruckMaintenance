<%--
  Created by IntelliJ IDEA.
  User: kira
  Date: 2019-10-21
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header</title>
    <!-- Meta tag Keywords -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords" content=""/>
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
<header>
    <div class="container fixed-top">
        <div class="header d-lg-flex justify-content-between align-items-center py-sm-3 py-2 px-sm-2 px-1">
            <!-- logo -->
            <div id="logo">
                <h1><a href="${pageContext.request.contextPath}/index.jsp">炉洋汽修</a></h1>
            </div>
            <!-- //logo -->
            <!-- nav -->
            <div class="nav_w3ls ml-lg-5">
                <nav>
                    <label for="drop" class="toggle">菜单</label>
                    <input type="checkbox" id="drop"/>
                    <ul class="menu">
                        <li><a class="js-scroll-trigger" href="${pageContext.request.contextPath}/index.jsp#banner">主页</a></li>
                        <li><a class="js-scroll-trigger" href="${pageContext.request.contextPath}/index.jsp#about">关于</a></li>
                        <li><a class="js-scroll-trigger" href="${pageContext.request.contextPath}/index.jsp#services">服务</a></li>
                        <li><a class="js-scroll-trigger" href="${pageContext.request.contextPath}/index.jsp#portfolio">维修品牌</a></li>
                        <%--<li><a href="portfolio.html">Portfolio</a></li>
                        <li>
                            <!-- First Tier Drop Down -->
                            <label for="drop-2" class="toggle toogle-2">Dropdown <span class="fa fa-angle-down"
                                                                                       aria-hidden="true"></span>
                            </label>
                            <a href="#">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                            <input type="checkbox" id="drop-2"/>
                            <ul>
                                <li><a href="#blog" class="drop-text">Blog</a></li>
                                <li><a href="single.html" class="drop-text">Single Page</a></li>
                                <li><a href="#services" class="drop-text">Services</a></li>
                                <li><a href="#more" class="drop-text">More</a></li>
                            </ul>
                        </li>--%>
                        <li><a class="js-scroll-trigger" href="${pageContext.request.contextPath}/index.jsp#more">联系我们</a></li>
                        <li class="ml-xl-5 ml-lg-2 mt-lg-0 mt-sm-4 mt-3">
                            <%--<a href="${pageContext.request.contextPath}/login.jsp" class="reqe-button text-uppercase">登录</a>--%>
                            <a href="${pageContext.request.contextPath}/home/home.do" class="reqe-button text-uppercase">登录</a>
                            <%--<a href="${pageContext.request.contextPath}/register.jsp" class="reqe-button text-uppercase">注册</a>--%>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- //nav -->
        </div>
    </div>
</header>
<!-- //header -->

</body>
</html>
