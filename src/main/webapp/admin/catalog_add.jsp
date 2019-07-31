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
                    <h2> 添加分类</h2>
                    <p class="lead"></p>
                </div>
                <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                    <div class="panel heading-border">
                        <form method="post" action="${pageContext.request.contextPath }/add.do" id="admin-form">
                            <div class="panel-body bg-light">
                                <div class="section row">
                                    <div>
                                        <div class="col-md-3"><b>分类名称</b></div>
                                        <div class="col-md-5"><b>所属分类</b></div>
                                        <div class="col-md-3"><b>分类描述</b></div>
                                        <div class="col-md-1" style="text-align:right;"><b>删除</b></div>
                                    </div>
                                </div>
                                <div class="section row" id="batch_items">
                                    <div>
                                        <div class="col-md-3">
                                            <label for="title" class="field prepend-icon">
                                                <input type="text" name="typename" id="title" class="gui-input money" placeholder="名称..." required>
                                                <label for="title" class="field-icon">
                                                    <i class="fa fa-stack"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-3">
                                            <label class="field select">
                                                <select id="language" name="parentid">
                                                    <c:forEach items="${typeslist}" var="cat1">
                                                    <option value="${cat1.id}">${cat1.typename}</option>
                                                    <c:forEach items="${cat1.children}" var="cat2">
                                                        <option value="${cat2.id}">&nbsp;&nbsp;&nbsp;&nbsp;${cat2.typename}</option>
                                                        <c:if test="${cat2.children}!=null">
                                                            <c:forEach items="${cat2.children}" var="cat2">
                                                                <option value="${cat3.id}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cat3.typename}</option>
                                                            </c:forEach>
                                                        </c:if>
                                                    </c:forEach>
                                                    </c:forEach>
                                                </select>
                                                <i class="arrow double"></i>
                                            </label>
                                        </div>
                                        <div class="col-md-5">
                                            <label for="info" class="field prepend-icon">
                                                <input type="text" name="desciption" id="info" class="gui-input" placeholder="描述...">
                                                <label for="info" class="field-icon">
                                                    <i class="fa fa-info"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-1" style="text-align:right;">
                                            <button type="button" class="button remove_item_button"> X </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer text-right">
                                    <button type="button" class="button" id="add_item_button"> 添加 </button>
                                    <button type="submit" class="button"> 保存 </button>
                                    <button type="button" class="button" onclick="javascript:window.location.href='catalog_list.html';"> 返回 </button>
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
    $("#add_item_button").click(function(){
        $("#batch_items").children("div").last().after($("#batch_items").children("div").first().clone());
        $("#batch_items").find("button.remove_item_button").attr("disabled",false);
        $("#batch_items").children("div").last().find("input").eq(0).attr("value","");
        $("#batch_items").children("div").last().find("button.remove_item_button").click(
            function(){itemRemove(this);}
        );
    });
    function itemRemove(ele){
        $(ele).parent().parent().remove();
        if($("#batch_items").children("div").size()==1){
            $("#batch_items").children("div").find("button.remove_item_button").attr("disabled",true);
        }
    }
</script>

</html>
