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
                        <form id="admin-form" name="addForm" action="#" method="post">
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
                                                    用户名
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="sn" class="field">
                                                <input id="sn" name="username" class="gui-input" value="${user.username}" type="text" readonly="readonly"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="realName" class="field prepend-icon">
                                                <label for="realName" class="field-icon">
                                                    真实名字
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="realName" class="field">
                                                <input id="realName" name="realName" class="gui-input" value="${user.realname}" type="text" readonly="readonly"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="card" class="field prepend-icon">
                                                <label for="card" class="field-icon">
                                                    身份证号
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="card" class="field">
                                                <input id="card" name="card" class="gui-input" value="${user.card}" type="text" readonly="readonly"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="email" class="field prepend-icon">
                                                <label for="email" class="field-icon">
                                                    邮箱
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="email" class="field">
                                                <input id="email" name="email" class="gui-input" value="${user.email}" type="text" readonly="readonly"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="birthday" class="field prepend-icon">
                                                <label for="birthday" class="field-icon">
                                                    生日
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="birthday" class="field">
                                                <input id="birthday" name="birthday" class="gui-input" value="<fmt:formatDate value="${user.birthday}" type="date" pattern="yyyy-MM-dd"/>" type="text" readonly="readonly"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="sex" class="field prepend-icon">
                                                <label for="sex" class="field-icon">
                                                    性别
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="sex" class="field">
                                                <input id="sex" name="sex" class="gui-input" value="${user.sex}" type="text" readonly="readonly"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="status" class="field prepend-icon">
                                                <label for="status" class="field-icon">
                                                    用户状态
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="status" class="field">
                                                <input id="status" name="status" class="gui-input" value="${user.status}" type="text" readonly="readonly"/>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="section row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-1">
                                            <label for="createtime" class="field prepend-icon">
                                                <label for="createtime" class="field-icon">
                                                    创建时间
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="createtime" class="field">
                                                <input id="createtime" name="createtime" class="gui-input" value="<fmt:formatDate value="${user.createtime}" type="date" pattern="yyyy-MM-dd HH:mm"/>" type="text" readonly="readonly"/>
                                            </label>
                                        </div>
                                    </div>

                                    <c:if test="${user.addresses!=null}">
                                        <c:forEach items="${user.addresses}" var="address">
                                            <div class="section-divider mt20 mb40"/>
                                            <div class="section row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-1">
                                                    <label for="zipCode" class="field prepend-icon">
                                                        <label for="zipCode" class="field-icon">
                                                            邮编
                                                        </label>
                                                    </label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="zipCode" class="field">
                                                        <input id="zipCode" name="zipCode" class="gui-input" value="${address.zipcode}" type="text" readonly="readonly"/>
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="section row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-1">
                                                    <label for="site" class="field prepend-icon">
                                                        <label for="site" class="field-icon">
                                                            地址
                                                        </label>
                                                    </label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="site" class="field">
                                                        <input id="site" name="site" class="gui-input" value="${address.site}" type="text" readonly="readonly"/>
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="section row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-1">
                                                    <label for="phone" class="field prepend-icon">
                                                        <label for="phone" class="field-icon">
                                                            电话号码
                                                        </label>
                                                    </label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="phone" class="field">
                                                        <input id="phone" name="phone" class="gui-input" value="${address.phone}" type="text" readonly="readonly"/>
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="section row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-1">
                                                    <label for="receiver" class="field prepend-icon">
                                                        <label for="receiver" class="field-icon">
                                                            收件人
                                                        </label>
                                                    </label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="receiver" class="field">
                                                        <input id="receiver" name="receiver" class="gui-input" value="${address.receiver}" type="text" readonly="readonly"/>
                                                    </label>
                                                </div>
                                            </div>

                                        </c:forEach>
                                    </c:if>


                                    <div class="panel-footer text-center">
                                        <button type="button" class="button"
                                                onclick="javascript:window.history.go(-1);"> 返回
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