<%--
  Created by IntelliJ IDEA.
  User: ouxiaowen
  Date: 2019-07-30
  Time: 08:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <title>东软电子商务后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/theme.css">
    <link rel="stylesheet" type="text/css" href="../css/admin-forms.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <%@ include file="head.jsp" %>
    <section id="content_wrapper">
        <section id="content" class="table-layout animated fadeIn">
            <div class="tray tray-center">
                <div class="content-header">
                    <h2> 商品信息</h2>
                </div>
                <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                    <div class="panel heading-border">
                        <div class="panel-body bg-light">
                            <div class="section row">
                                <div class="col-md-5"><img src="${goods.imgpath}" width="350"></div>
                                <div class="col-md-5">
                                    <div class="section row">
                                        <div class="col-md-3"><b>名称</b></div>
                                        <div class="col-md-9">${goods.goodsname}</div>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-3"><b>所属分类</b></div>
                                        <div class="col-md-9">${goods.type.typename}</div>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-3"><b>单价</b></div>
                                        <div class="col-md-9">${goods.price}</div>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-3"><b>库存数量</b></div>
                                        <div class="col-md-9">${goods.count}</div>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-3"><b>标题</b></div>
                                        <div class="col-md-9">${goods.title}</div>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-3"><b>商品详情</b></div>
                                        <div class="col-md-9">${goods.details}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer text-right">
                                <button type="button" class="button" onclick="javascript:window.location.href='/findGoods.do';"> 返回 </button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>


</div>
<style>
    /* demo page styles */
    body { min-height: 2300px; }

    .content-header b,
    .admin-form .panel.heading-border:before,
    .admin-form .panel .heading-border:before {
        transition: all 0.7s ease;
    }
    /* responsive demo styles */
    @media (max-width: 800px) {
        .admin-form .panel-body { padding: 18px 12px; }
    }
</style>

<style>
    .ui-datepicker select.ui-datepicker-month,
    .ui-datepicker select.ui-datepicker-year {
        width: 48%;
        margin-top: 0;
        margin-bottom: 0;

        line-height: 25px;
        text-indent: 3px;

        color: #888;
        border-color: #DDD;
        background-color: #FDFDFD;

        -webkit-appearance: none; /*Optionally disable dropdown arrow*/
    }
</style>

<!-- jQuery -->
<script src="../js/jquery.min.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<!-- Theme Javascript -->
<script src="../js/utility.js"></script>
<script src="../js/demo/demo.js"></script>
<script src="../js/main.js"></script>
<script src="../js/pages.js"></script>
<!-- END: PAGE SCRIPTS -->
</body>


</html>

