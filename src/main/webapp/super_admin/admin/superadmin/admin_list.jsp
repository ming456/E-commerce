<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>


<!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">

    <title> 管理员模块 </title>

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/super_admin/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/super_admin/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/super_admin/assets/img/favicon.ico">
</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <%@ include file="header.jsp" %>

    <%@ include file="left.jsp" %>

    <section id="content_wrapper">
        <section id="content" class="table-layout animated fadeIn">
            <div class="tray tray-center">
                <div class="content-header">
                    <h2> 管理员列表 </h2>
                    <p class="lead"></p>
                </div>
                <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                    <div class="panel  heading-border">
                        <div class="panel-menu">
                            <div class="row">
                                <div class="hidden-xs hidden-sm col-md-3">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-refresh"
                                               onclick="javascript:window.location.href='/adminList.do';"></i>
                                        </button>
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-plus"
                                               onclick="javascript:window.location.href='/super_admin/admin/superadmin/admin_add.jsp';"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-9 text-right">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-chevron-left"></i>
                                        </button>
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body pn">
                            <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                                <thead>
                                <tr class="">
                                    <th class="hidden-xs">编号</th>
                                    <th class="hidden-xs">管理员</th>
                                    <th class="hidden-xs">密码</th>
                                    <th class="hidden-xs">权限</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${admins}" var="admin">
                                    <tr>
                                        <td>${admin.id}</td>
                                        <td>${admin.supername}</td>
                                        <td>${admin.password}</td>
                                        <td>${admin.access}</td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-sm"
                                                    onclick="javascript:window.location.href='/loadAccess.do?id=${admin.id}';">
                                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                                修改权限
                                            </button>
                                            <button type="button" class="btn btn-danger btn-sm"
                                                    onclick="javascript:
                                                    if(confirm('确定删除吗')){
                                            window.location.href='/removeAdmin.do?id=${admin.id}';
                                            }">
                                                <span class="glyphicon glyphicon-trash " aria-hidden="true"></span>
                                                删除
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
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
<script>
</script>
<script src="/super_admin/vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="/super_admin/vendor/jquery/jquery_ui/jquery-ui.min.js"></script>
<script src="/super_admin/assets/admin-tools/admin-forms/js/jquery.validate.min.js"></script>
<script src="/super_admin/assets/admin-tools/admin-forms/js/additional-methods.min.js"></script>
<script src="/super_admin/assets/admin-tools/admin-forms/js/jquery-ui-datepicker.min.js"></script>
<script src="/super_admin/assets/js/utility/utility.js"></script>
<script src="/super_admin/assets/js/demo/demo.js"></script>
<script src="/super_admin/assets/js/main.js"></script>
<script type="text/javascript" src="/super_admin/js/pages.js"></script>
<script type="text/javascript" src="/super_admin/js/items.js"></script>
</body>
</html>

