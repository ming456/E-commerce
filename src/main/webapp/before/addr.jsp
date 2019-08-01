<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/31
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息管理</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/css/before/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/before/daohang.css" rel="stylesheet" type="text/css" />
    <link href="/css/before/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                    <div  style="height: 20%">

                    </div>
                    <form role="form">
                        <div class="form-group">
                            <label for="receiver">收货人</label>
                            <input type="text" class="form-control" id="receiver" />
                        </div>
                        <div class="form-group">
                            <label for="phone">电话</label>
                            <input type="text" class="form-control" id="phone" />
                            <div class="alert alert-danger" id="div1" style="display:none">
                                电话号码为11位
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="zipCode">邮政编码</label>
                            <input type="text" class="form-control" id="zipCode" />
                            <div class="alert alert-danger" id="div2" style="display:none">
                                邮政编码为6位
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="addr">地址</label>
                            <input type="text" class="form-control" id="addr" />
                        </div>
                        <input type="button"  class="btn btn-default btn-primary" onclick="buttonclick()" value="提交"/>
                    </form>
                </div>
                <div class="col-md-4 column">
                </div>
            </div>
        </div>
    </div>
</div>
<script>
        document.getElementById("receiver").value="${address.getReceiver()}";
        document.getElementById("phone").value="${address.getPhone()}";
        document.getElementById("zipCode").value="${address.getZipcode()}"
        document.getElementById("addr").value="${address.getSite()}";
    function buttonclick(){
        var receiver=document.getElementById("receiver").value;
        var phone=document.getElementById("phone").value;
        var zipCode=document.getElementById("zipCode").value;
        var addr=document.getElementById("addr").value;
        var adrid =${address.getId()};
        if(receiver=="" || phone=="" || zipCode=="" || addr==""){
            alert("不能为空");
        }
        else {

            if (phone.length != 11 || isNaN(phone) != false) {
                document.getElementById("div1").style.display = "block";
            }
            if (zipCode.length != 6) {
                document.getElementById("div2").style.display = "block";
            }
            if (phone.length == 11 && isNaN(phone) == false && zipCode.length == 6) {
                document.getElementById("div1").style.display = "none";
                document.getElementById("div2").style.display = "none";
                $.ajax({
                    url: "/updateaddr.do",
                    type: "POST",
                    data: {
                        "receiver": receiver, "phone": phone,
                        "zipCode": zipCode, "addr": addr, "id": adrid
                    },
                    success: function (data) {
                        if (data == "1") {
                            alert("更新成功");
                            window.location.href = "/usermanage.do";
                        } else {
                            alert("更新失败");
                        }
                    },
                    error: function (err) {
                        alert(err);
                    }
                });
            }
        }
    }
</script>




</body>
</html>
