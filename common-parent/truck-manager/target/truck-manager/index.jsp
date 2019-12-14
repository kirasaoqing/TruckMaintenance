<%--
  Created by IntelliJ IDEA.
  User: kira
  Date: 2019-10-21
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
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

<!-- banner -->
<section class="banner" id="banner">
    <!-- banner text -->
    <div class="container">
        <div class="banner_text_wthree_pvt">
            <h3 class="home-banner-w3">卡车<br>维修和养护</h3>
            <p class="bnr-txt">输入车牌号码，查询车辆维修状态</p>
            <form action="#" method="post" class="d-flex serching-styles-w3pvt">
                <input type="search" class="serach-input" placeholder="请输入车牌号码" name="search" required>
                <button class="btn bg-theme button-w3" type="button">查 询</button>
            </form>
        </div>
    </div>
    <!-- //banner text -->
    <!-- banner-bottom -->
    <%--<div class="banner-bottom-w3ls">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-6">
                    <div class="bb-img">
                        <img src="${pageContext.request.contextPath}/assets/Images/pic4287.jpg" class="img-fluid img-thumbnail"
                             alt=""/>
                        <h3></h3>
                    </div>
                </div>
                <div class="col-sm-4 col-6 mx-auto mt-sm-0 mt-4">
                    <div class="bb-img">
                        <img src="${pageContext.request.contextPath}/assets/Images/pic4286.jpg" class="img-fluid img-thumbnail"
                             alt=""/>
                        <h3></h3>
                    </div>
                </div>
                <div class="col-sm-4 col-6">
                    <div class="bb-img">
                        <img src="${pageContext.request.contextPath}/assets/Images/pic4288.jpg" class="img-fluid img-thumbnail"
                             alt=""/>
                        <h3></h3>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- //banner-bottom -->
</section>
<!-- //banner -->

<!-- about-->
<section class="single_grid_w3_main align-w3-abt" id="about">
    <div class="container">
        <div class="wthree_pvt_title text-center">
            <h4 class="w3pvt-title">我们提供什么？</h4>
            <p class="sub-title">4个24小时服务承诺&nbsp&nbsp&nbsp&nbsp一站式卡车维修</p>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="abt-grid">
                    <div class="row">
                        <div class="col-3">
                            <div class="abt-icon">
                                <span class="fa fa-truck"></span>
                            </div>
                        </div>
                        <div class="col-9">
                            <div class="abt-txt">
                                <h4>检测保养</h4>
                                <p>发动机检测 变速箱检测 整车检测</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 my-lg-0 my-4">
                <div class="abt-grid">
                    <div class="row">
                        <div class="col-3">
                            <div class="abt-icon">
                                <span class="fa fa-truck"></span>
                            </div>
                        </div>
                        <div class="col-9">
                            <div class="abt-txt">
                                <h4>维修维护</h4>
                                <p>底盘维修 电器维修 整车维修</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="abt-grid">
                    <div class="row">
                        <div class="col-3">
                            <div class="abt-icon">
                                <span class="fa fa-truck"></span>
                            </div>
                        </div>
                        <div class="col-9">
                            <div class="abt-txt">
                                <h4>钣金喷漆</h4>
                                <p>汽车修复 喷涂翻新</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center">
            <a href="#about" class="btn w3ls-btn">查看更多</a>
        </div>
    </div>
</section>
<!-- //about -->

<!-- services -->
<section class="bg-services position-relative align-w3" id="services">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <div class="services-bg-color">
                    <div class="wthree_pvt_title mb-3">
                        <h4 class="w3pvt-title w3pvt-titl-sec text-wh">五星服务 全程呵护
                        </h4>
                        <span class="sub-title text-li">我们的承诺</span>
                    </div>
                    <div class="row">
                        <div class="col-md-6 service-title my-4">
                            <h4 class="home-title text-theme">主 动</h4>
                            <p class="sec-4">"一对一"服务顾问<br> "三位一体"交车
                            </p>
                        </div>
                        <div class="col-md-6 service-title my-md-4">
                            <h4 class="home-title text-theme">专 业</h4>
                            <p class="sec-4">人员持证上岗<br> 100%维修品质检验
                            </p>
                        </div>
                        <div class="col-md-6 service-title mt-4">
                            <h4 class="home-title text-theme">诚 信</h4>
                            <p class="sec-4">透明车间<br> 阳光服务
                            </p>
                        </div>
                        <div class="col-md-6 service-title mt-4">
                            <h4 class="home-title text-theme">满 意</h4>
                            <p class="sec-4">全天候全方位服务呵护<br> 满意度现场改进
                            </p>
                        </div>
                    </div>
                    <div class="d-flex justify-content-start">
                        <a href="#services" class="btn w3ls-btn">查看更多</a>
                    </div>
                </div>

            </div>
            <div class="offset-lg-2"></div>
        </div>
    </div>
</section>
<!-- //services -->

<!-- portfolio -->
<section class="portfolio-wthree align-w3 py-5" id="portfolio">
    <div class="container py-xl-5 py-lg-3">
        <div class="wthree_pvt_title text-center">
            <h4 class="w3pvt-title">维修品牌
            </h4>
            <p class="sub-title">我们提供多个品牌的维修服务 涵盖多种轻卡和重卡</p>
        </div>
        <div>
            <ul class="demo row">
                <li class="col-lg-4">
                    <div class="img-grid">
                        <div class="Portfolio-grid1">
                            <a href="#gal1">
                                <img src="${pageContext.request.contextPath}/assets/Images/g1.jpg" alt=" " class="img-fluid"/>
                            </a>
                        </div>
                        <div class="port-desc text-center">
                            <h6 class="main-title-w3pvt text-center">JAC江淮汽车</h6>
                            <p> 安徽江淮汽车集团股份有限公司(简称“江淮汽车”),是一家集商用车、乘用车及动力总成研发、制造、销售和服务于一体的综合型汽车厂商。
                            </p>
                        </div>
                    </div>
                </li>
                <li class="col-lg-4">
                    <div class="img-grid">
                        <div class="Portfolio-grid1">
                            <a href="#gal2">
                                <img src="${pageContext.request.contextPath}/assets/Images/g2.jpg" alt=" " class="img-fluid"/>
                            </a>
                        </div>
                        <div class="port-desc text-center">
                            <h6 class="main-title-w3pvt text-center">JAC江淮汽车</h6>
                            <p> 安徽江淮汽车集团股份有限公司(简称“江淮汽车”),是一家集商用车、乘用车及动力总成研发、制造、销售和服务于一体的综合型汽车厂商。
                            </p>
                        </div>
                    </div>
                </li>
                <li class="col-lg-4">
                    <div class="img-grid">
                        <div class="Portfolio-grid1">
                            <a href="#gal3">
                                <img src="${pageContext.request.contextPath}/assets/Images/g3.jpg" alt=" " class="img-fluid"/>
                            </a>
                        </div>
                        <div class="port-desc text-center">
                            <h6 class="main-title-w3pvt text-center">JAC江淮汽车</h6>
                            <p> 安徽江淮汽车集团股份有限公司(简称“江淮汽车”),是一家集商用车、乘用车及动力总成研发、制造、销售和服务于一体的综合型汽车厂商。
                            </p>
                        </div>
                    </div>
                </li>
                <li class="col-lg-4">
                    <div class="img-grid">
                        <div class="Portfolio-grid1">
                            <a href="#gal4">
                                <img src="${pageContext.request.contextPath}/assets/Images/g4.jpg" alt=" " class="img-fluid"/>
                            </a>
                        </div>
                        <div class="port-desc text-center">
                            <h6 class="main-title-w3pvt text-center">JAC江淮汽车</h6>
                            <p> 安徽江淮汽车集团股份有限公司(简称“江淮汽车”),是一家集商用车、乘用车及动力总成研发、制造、销售和服务于一体的综合型汽车厂商。
                            </p>
                        </div>
                    </div>
                </li>
                <li class="col-lg-4">
                    <div class="img-grid">
                        <div class="Portfolio-grid1">
                            <a href="#gal5">
                                <img src="${pageContext.request.contextPath}/assets/Images/g5.jpg" alt=" " class="img-fluid"/>
                            </a>
                        </div>
                        <div class="port-desc text-center">
                            <h6 class="main-title-w3pvt text-center">JAC江淮汽车</h6>
                            <p> 安徽江淮汽车集团股份有限公司(简称“江淮汽车”),是一家集商用车、乘用车及动力总成研发、制造、销售和服务于一体的综合型汽车厂商。
                            </p>
                        </div>
                    </div>
                </li>
                <li class="col-lg-4">
                    <div class="img-grid">
                        <div class="Portfolio-grid1">
                            <a href="#gal6">
                                <img src="${pageContext.request.contextPath}/assets/Images/g6.jpg" alt=" " class="img-fluid"/>
                            </a>
                        </div>
                        <div class="port-desc text-center">
                            <h6 class="main-title-w3pvt text-center">JAC江淮汽车</h6>
                            <p> 安徽江淮汽车集团股份有限公司(简称“江淮汽车”),是一家集商用车、乘用车及动力总成研发、制造、销售和服务于一体的综合型汽车厂商。
                            </p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!-- popup-->
        <div id="gal1" class="popup-effect animate">
            <div class="popup">
                <img src="${pageContext.request.contextPath}/assets/Images/g1.jpg" alt="Popup Image" class="img-fluid"/>
                <p class="editContent mt-4">JAC江淮汽车</p>
                <a class="close" href="#gallery">&times;</a>
            </div>
        </div>
        <!-- //popup -->
        <!-- popup-->
        <div id="gal2" class="popup-effect animate">
            <div class="popup">
                <img src="${pageContext.request.contextPath}/assets/Images/g2.jpg" alt="Popup Image" class="img-fluid"/>
                <p class="editContent mt-4">JAC江淮汽车</p>
                <a class="close" href="#gallery">&times;</a>
            </div>
        </div>
        <!-- //popup -->
        <!-- popup-->
        <div id="gal3" class="popup-effect animate">
            <div class="popup">
                <img src="${pageContext.request.contextPath}/assets/Images/g3.jpg" alt="Popup Image" class="img-fluid"/>
                <p class="editContent mt-4">JAC江淮汽车</p>
                <a class="close" href="#gallery">&times;</a>
            </div>
        </div>
        <!-- //popup3 -->
        <!-- popup-->
        <div id="gal4" class="popup-effect animate">
            <div class="popup">
                <img src="${pageContext.request.contextPath}/assets/Images/g4.jpg" alt="Popup Image" class="img-fluid"/>
                <p class="editContent mt-4">JAC江淮汽车</p>
                <a class="close" href="#gallery">&times;</a>
            </div>
        </div>
        <!-- //popup -->
        <!-- popup-->
        <div id="gal5" class="popup-effect animate">
            <div class="popup">
                <img src="${pageContext.request.contextPath}/assets/Images/g5.jpg" alt="Popup Image" class="img-fluid"/>
                <p class="editContent mt-4">JAC江淮汽车</p>
                <a class="close" href="#gallery">&times;</a>
            </div>
        </div>
        <!-- //popup -->
        <!-- popup-->
        <div id="gal6" class="popup-effect animate">
            <div class="popup">
                <img src="${pageContext.request.contextPath}/assets/Images/g6.jpg" alt="Popup Image" class="img-fluid"/>
                <p class="editContent mt-4">JAC江淮汽车</p>
                <a class="close" href="#gallery">&times;</a>
            </div>
        </div>
        <!-- //popup -->
    </div>
</section>
<!-- //portfolio -->

<!-- slide -->
<section class="wthree-slie-btm py-lg-5" id="more">
    <div class="container-fluid wthree-more">
        <div class="row">
            <div class="col-lg-6">
                <div class="slide-banner pl-0">
                </div>
            </div>
            <div class="col-lg-6 mt-lg-0 mt-4">
                <div class="container">
                    <div class="wthree_pvt_title">
                        <h4 class="w3pvt-title">联系我们
                        </h4>
                        <span class="sub-title">add your caption here</span>
                    </div>
                    <div class="row flex-column">
                        <div class="abt-grid">
                            <div class="row">
                                <div class="col-3">
                                    <div class="abt-icon">
                                        <span class="fa fa-address-card"></span>
                                    </div>
                                </div>
                                <div class="col-9">
                                    <div class="abt-txt ml-0">
                                        <h4>地址</h4>
                                        <p>浙江省绍兴市上虞区亚厦大道1086号</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="abt-grid mt-4 pt-lg-2">
                            <div class="row">
                                <div class="col-3">
                                    <div class="abt-icon">
                                        <span class="fa fa-phone"></span>
                                    </div>
                                </div>
                                <div class="col-9">
                                    <div class="abt-txt ml-0">
                                        <h4>手机</h4>
                                        <p>13333333333</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="abt-grid mt-4 pt-lg-2">
                            <div class="row">
                                <div class="col-3">
                                    <div class="abt-icon">
                                        <span class="fa fa-phone-square"></span>
                                    </div>
                                </div>
                                <div class="col-9">
                                    <div class="abt-txt ml-0">
                                        <h4>座机</h4>
                                        <p>0575-82127808</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-start">
                        <a href="#more" class="btn w3ls-btn">查看更多</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //slide -->

<!-- blog -->
<%--<section class="blog_w3ls align-w3" id="blog">
    <div class="container">
        <div class="wthree_pvt_title text-center">
            <h4 class="w3pvt-title">latest posts
            </h4>
            <p class="sub-title">Subheadings stand out because they are like mini titles. They make your post stand
                out and
                make it more readable.</p>
        </div>
        <div class="row space-sec">
            <!-- blog grid -->
            <div class="col-lg-4 col-md-6 mt-sm-0 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="single.html">
                            <img class="card-img-bottom" src="${pageContext.request.contextPath}/assets/Images/g1.jpg" alt="Card image cap">
                            <span class="post-icon">blog post</span>
                        </a>
                    </div>
                    <div class="card-body">
                        <h5 class="blog-title card-title font-weight-bold">
                            <a href="single.html">Cras ultricies ligula sed.</a>
                        </h5>
                        <p>At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit
                            ametLorem ipsum dolor sit amet,sed diam nonumy.</p>
                        <a href="single.html" class="blog_link">Read more</a>
                    </div>
                </div>
            </div>
            <!-- //blog grid -->
            <!-- blog grid -->
            <div class="col-lg-4 col-md-6 mt-md-0  mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="single.html">
                            <img class="card-img-bottom" src="${pageContext.request.contextPath}/assets/Images/g2.jpg" alt="Card image cap">
                            <span class="post-icon">blog post</span>
                        </a>
                    </div>
                    <div class="card-body">
                        <h5 class="blog-title card-title font-weight-bold">
                            <a href="single.html">magna porta au blandita.</a>
                        </h5>
                        <p>At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit
                            ametLorem ipsum dolor sit amet,sed diam nonumy.</p>
                        <a href="single.html" class="blog_link">Read more</a>
                    </div>
                </div>
            </div>
            <!-- //blog grid -->
            <!-- blog grid -->
            <div class="col-lg-4 col-md-6 mt-lg-0 mt-4 mx-auto blog-end">
                <div class="card">
                    <div class="card-header p-0  position-relative">
                        <a href="single.html">
                            <img class="card-img-bottom" src="${pageContext.request.contextPath}/assets/Images/g3.jpg" alt="Card image cap">
                            <span class="post-icon">blog post</span>
                        </a>
                    </div>
                    <div class="card-body">
                        <h5 class="blog-title card-title font-weight-bold">
                            <a href="single.html">Cras ultricies ligula sed.</a>
                        </h5>
                        <p>At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit
                            ametLorem ipsum dolor sit amet,sed diam nonumy.</p>
                        <a href="single.html" class="blog_link">Read more</a>
                    </div>
                </div>
            </div>
            <!-- //blog grid -->
        </div>
    </div>
</section>--%>
<!-- //blog -->

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
