<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">

    <title>用户详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/css/admin-forms.css">
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
                    <h2> 用户详情 </h2>
                    <p class="lead"></p>
                </div>
                <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                    <div class="panel heading-border">
                        <form id="admin-form" name="addForm" action="/edituser.do">
                            <input type="hidden" name="id" value="${sessionScope.user.id}"/>
                            <div class="panel-body bg-light">
                                <div class="section-divider mt20 mb40">
                                    <span> 基本信息 </span>
                                </div>
                                <div class="section row">
                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="sn" class="field prepend-icon">
                                                <label for="sn" class="field-icon">
                                                    用户呢称
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="sn" class="field">
                                                <input id="sn" name="username" class="gui-input" value="${sessionScope.user.username}" type="text"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="realName" class="field prepend-icon">
                                                <label for="realName" class="field-icon">
                                                    真实姓名
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="realName" class="field">
                                                <input id="realName" name="realname" class="gui-input" value="${sessionScope.user.realname}" type="text"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="card" class="field prepend-icon">
                                                <label for="card" class="field-icon">
                                                    邮政编码
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="card" class="field">
                                                <input id="card" name="zipcode" class="gui-input" value="${sessionScope.user.address.zipcode}" type="text"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="email" class="field prepend-icon">
                                                <label for="email" class="field-icon">
                                                    收货人电话号码
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="email" class="field">
                                                <input id="email" name="phone" class="gui-input" value="${sessionScope.user.address.phone}" type="text" />
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="site" class="field prepend-icon">
                                                <label for="site" class="field-icon">
                                                    收货地址
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="email" class="field">
                                                <input id="site" name="site" class="gui-input" value="${sessionScope.user.address.site}" type="text" />
                                            </label>
                                        </div>
                                    </div>
                                    <div class="panel-footer text-center">
                                        <button type="button" class="button"
                                                onclick="javascript:window.history.go(-1);"> 返回
                                        </button>
                                        <button type="submit" class="button"> 保存
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </section>
</div>
<style>
    /* demo page styles */
    body {
        min-height: 2300px;
    }

    .content-header b,
    .admin-form .panel.heading-border:before,
    .admin-form .panel .heading-border:before {
        transition: all 0.7s ease;
    }

    /* responsive demo styles */
    @media (max-width: 800px) {
        .admin-form .panel-body {
            padding: 18px 12px;
        }
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