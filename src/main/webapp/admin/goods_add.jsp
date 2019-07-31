<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ouxiaowen
  Date: 2019-07-29
  Time: 08:49
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
                    <h2> 上架新商品</h2>
                </div>
                <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                    <div class="panel heading-border">
                        <form method="post" action="/addGoods.do" enctype="multipart/form-data" id="admin-form">
                            <div class="panel-body bg-light">
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>名称</b></div>
                                    <div class="col-md-5">
                                        <label for="goodsname" class="field prepend-icon">
                                            <input type="text" name="goodsname" id="goodsname" class="gui-input" placeholder="商品名称" required>
                                            <label for="goodsname" class="field-icon">
                                                <i class="fa fa-navicon"></i>
                                            </label>
                                        </label>
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>标题</b></div>
                                    <div class="col-md-5">
                                        <label for="title" class="field prepend-icon">
                                            <input type="text" name="title" id="title" class="gui-input" placeholder="商品详情标题" required>
                                            <label for="title" class="field-icon">
                                                <i class="fa fa-navicon"></i>
                                            </label>
                                        </label>
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>所属分类</b></div>
                                    <div class="col-md-2">
                                        <label class="field select">
                                            <select id="language" name="classify">
                                                <c:forEach items="${typeslist}" var="cat1">
                                                    <option value="${cat1.id}" disabled>${cat1.typename}</option>
                                                    <c:forEach items="${cat1.children}" var="cat2">
                                                        <option value="${cat2.id}">&nbsp;&nbsp;&nbsp;&nbsp;${cat2.typename}</option>
                                                        <c:forEach items="${cat2.children}" var="cat3">
                                                            <option value="${cat3.id}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cat3.typename}</option>
                                                        </c:forEach>
                                                    </c:forEach>
                                                </c:forEach>
                                            </select>
                                            <i class="arrow double"></i>
                                        </label>
                                    </div>
                                </div>

                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>单价</b></div>
                                    <div class="col-md-2">
                                        <label for="price" class="field prepend-icon">
                                            <input type="text" name="price" id="price" class="gui-input" placeholder="单价" required>
                                            <label for="price" class="field-icon">
                                                <i class="fa fa-cny"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 10px;"><b>数量</b></div>
                                    <div class="col-md-2">
                                        <label for="count" class="field prepend-icon">
                                            <input type="number" name="count" id="count" class="gui-input" placeholder="数量" required>
                                            <label for="count" class="field-icon">
                                                <i class="fa fa-arrows"></i>
                                            </label>
                                        </label>
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>商品详情</b></div>
                                    <div class="col-md-2">
                                        <label for="details" class="field prepend-icon">
                                            <textarea name="details" id="details" required></textarea>
<%--                                            <input type="number" name="details" id="details" class="gui-input" placeholder="商品详情" required>--%>
                                            <label for="details" class="field-icon">
                                                <i class="fa fa-arrows"></i>
                                            </label>
                                        </label>
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>图片</b></div>
                                    <div class="col-md-1" id="showImage"></div>
                                    <div class="col-md-7">
                                        <input type="file" name="photo" id="imagepath" class="gui-file" placeholder="图片..." required>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer text-right">
                                <button type="submit" class="button"> 保存 </button>
                                <button type="button" class="button" onclick="javascript:window.location.href='cake_list.html';"> 返回 </button>
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
<script>
    $("#image").change(function(e) {
        var file = e.target.files[0]
        var img = new Image(), url = img.src = URL.createObjectURL(file)
        img.width=50;
        var $img = $(img)
        img.onload = function() {
            URL.revokeObjectURL(url)
            $('#showImage').empty().append($img)
        }
    })

</script>

</html>