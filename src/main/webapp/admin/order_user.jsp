<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎使用 IMOOC Cake 后台管理系统</title>
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
                    <h2> 用户地址详细</h2>
                    <p class="lead"></p>
                </div>
                <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                    <div class="panel  heading-border">
                        <div class="panel-menu">
                            <div class="row">
                                <div class="hidden-xs hidden-sm col-md-3">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-plus" onclick="javascript:window.location.href='cake_add.html';"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-9 text-right">
                                    <form action="#" method="post">
                                        共5条 1/1
                                        <div class="btn-group">
                                            <button type="submit" name="pageNum" <%--value="0"--%> class="btn btn-default light">
                                                <i class="fa fa-chevron-left"></i>
                                            </button>
                                            <button type="submit" name="pageNum" <%--value="2"--%> class="btn btn-default light">
                                                <i class="fa fa-chevron-right"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body pn">
                            <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                                <thead>
                                <tr class="">
                                    <th class="text-center hidden-xs">Select</th>
                                    <th class="hidden-xs">#</th>
                                    <th class="hidden-xs">用户呢称</th>
                                    <th class="hidden-xs">真实姓名</th>
                                    <th class="hidden-xs">邮政编码</th>
                                    <th class="hidden-xs">收货人电话号码</th>
                                    <th class="hidden-xs">收货地址</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr class="message-unread">
                                        <td class="hidden-xs">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td>${sessionScope.user.id}</td>
                                        <td>${sessionScope.user.username}</td>
                                        <td>${sessionScope.user.realname}</td>
                                        <td>${sessionScope.user.address.zipcode}</td>
                                        <td>${sessionScope.user.address.phone}</td>
                                        <td>${sessionScope.user.address.site}</td>
                                        <td>
                                            <a class="btn btn-primary btn-sm" href="/toedit.do">修改</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
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
