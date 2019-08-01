<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息管理</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="/css/before/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/css/before/daohang.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath }/css/before/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<div class="all_zong">
    <!--最上面 灰色条部分-->
    <div class="all_zong_top">
        <div class="all_zong_top_right a8c">
            <table border="0" cellspacing="0" cellpadding="0" class="main_login">
                <tr>
                    <td>
                        <p id="content">
                            <c:if test="${user!=null}">欢迎 ${user.username}</c:if>
                            <c:if test="${user==null}"><a href="before/userlogin.jsp" target="_top">登录</a></c:if>
                        </p>
                    </td>
                    <td>
                        <p>
                            <c:if test="${user==null}">
                                <a href="before/register.jsp" target="_top">注册</a>
                            </c:if>
                        </p>
                    </td>
                    <td><span class="xx">|</span><a href="/usermanage.do" target="_top">个人中心</a><span
                            class="xx">|</span></td>
                    <td><span class="xx">|</span><a href="/userCenter.do" target="_top">订单管理</a><span
                            class="xx">|</span></td>
                    <script>
                        function usermanageclick() {
                            sessionStorage.setItem("id", id);
                            window.location.href = "/usermanage.do"
                        }
                    </script>
                    <!-- 没有登录 -->
                    <c:if test="${user!= null}">
                        <td><a href="/userlogout.do" target="_top">退出</a><span
                                class="xx">|</span></td>
                    </c:if>
                </tr>
            </table>
        </div>
    </div>
    <!--end-->
    <!--logo 搜索-->
    <div class="all_zong_logo">
        <div class="all_zong_logo2">
            <img src="${pageContext.request.contextPath }/images/before/mylogo.png"/>
        </div>
        <div class="back_search">
            <div class="back_search_red">
                <form method="post" action="/searchgoods.do">
                    <div class="div2">
                        <input type="text" name="searchgoods" class="txt" placeholder="请输入您要查询的内容"/>
                    </div>
                    <div class="div1">
                        <button id="search" class="an">搜索</button>
                    </div>
                </form>
            </div>
        </div>
        <!--end-->
    </div>
    <!--红色 导航-->
    <div class="skin_a">
        <div class="front_daohangbj">
            <div class="all_zong">
                <div class="front_daohang">
                    <ul>
                        <li class="backbj"><a href="/Browse.do" target="_top">首页</a></li>
                        <!-- 显示商品类型 -->
                        <li><a href="#" target="_top">水果</a></li>
                        <li><a href="#" target="_top">服装</a></li>
                        <li class="buy">
                            <p class="car">
                                <a href="/selectCart.do" target="_top">购物车</a>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--红色 导航 end-->
</div>
<div class="blank"></div>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <!--用户信息管理start-->
            <div class="row clearfix">
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                    <form method="post">
                        <div class="form-group">
                            <label for="usernameInput">用户名</label>
                            <input type="text" class="form-control" id="usernameInput" value="${user.getUsername()}">
                            <div class="alert alert-danger" id="div1" style="display:none">
                                用户名不能是全数字
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="realname">真实姓名</label>
                            <input type="text" class="form-control" id="realname" value="${user.getRealname()}">
                        </div>
                        <div class="form-group">
                            <label for="identityInput">身份证号</label>
                            <input type="text" class="form-control" id="identityInput" value="${user.getCard()}">
                            <div class="alert alert-danger" id="div2" style="display:none">
                                身份证号不能少于18位
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="identityInput">性别</label>
                            <label class="radio-inline">
                                <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 女
                            </label>
                            <!--设置radio的值start-->
                            <script>
                                if (${user.getSex()=="M"})
                                    $("input:radio[value='option1']").attr("checked", true);
                                else {
                                    $("input:radio[value='option2']").attr("checked", true);
                                }
                            </script>
                            <!--设置radio的值end-->
                        </div>
                        <div class="form-group">
                            <label for="birthday">生日</label>
                            <input type="text" class="form-control" id="birthday" value="<fmt:formatDate value="${user.getBirthday()}" type="date"
                                                            pattern="yyyy-MM-dd"/>">
                            <li style="color: #dd4a33">日期输入格式为yyyy/mm/rr</li>

                        </div>
                        <div class="form-group">
                            <label for="email">邮件</label>
                            <input type="text" class="form-control" id="email" value="${user.getEmail()}">
                            <div class="alert alert-danger" id="div3" style="display:none">
                                邮件账号不正确，${user.getEmail()}缺少@
                            </div>
                        </div>


                        <div class="form-group">
                            <li><a id="modal-406229" href="#modal-container-406229"
                                   role="button" class="btn" data-toggle="modal">我的收货地址</a></li>
                            <a id="modal-704714" href="#modal-container-704714" role="button"
                               class="btn" data-toggle="modal">添加地址</a>

                        </div>
                        <input type="button" class="btn btn-default btn-primary" onclick="buttonclick()" value="提交"/>
                    </form>
                </div>
                <div class="col-md-4 column">
                </div>
            </div>
            <script type="text/javascript">
                function buttonclick() {
                    var username = document.getElementById("usernameInput").value;
                    var realname = document.getElementById("realname").value;
                    var identity = document.getElementById("identityInput").value;
                    var birthday = document.getElementById("birthday").value;
                    var email = document.getElementById("email").value;
                    var sex1 = document.getElementById("inlineRadio1");
                    var sex2 = document.getElementById("inlineRadio2");
                    var sex;
                    var password =${user.getPassword()};
                    var tipsquestion = "${user.getTipsquestion()}";
                    var tipsanswer = "${user.getTipsanswer()}";

                    var createtime = "${user.getCreatetime()}";
                    var id =${user.getId()};
                    var r;
                    if (sex1.checked == true) {
                        sex = "M";
                    }
                    if (sex2.checked == true) {
                        sex = "F"
                    }
                    // const ren=/^\d+$/.test(username);
                    if (username == "" || realname == "" || identity == "" ||
                        birthday == "" || email == "" || sex == "") {
                        alert("不能为空");
                    } else {

                        if (isNaN(username) == false) {
                            document.getElementById("div1").value = "用户名不能是全数字";
                            document.getElementById("div1").style.display = "block";
                        }
                        if (username == null) {
                            document.getElementById("div1").value = "内容不能为空";
                            document.getElementById("div1").style.display = "block";
                        }

                        if (identity.length != 18) {
                            document.getElementById("div2").style.display = "block";
                        }
                        if (email.indexOf("@") == -1) {
                            document.getElementById("div3").style.display = "block";
                        }
                        if (identity.length == 18 && email.indexOf("@") != -1 && isNaN(username) == true) {

                            document.getElementById("div1").style.display = "none";
                            document.getElementById("div2").style.display = "none";
                            document.getElementById("div3").style.display = "none";

                            $.ajax({
                                url: "/updateuser.do",
                                type: "post",
                                data: {
                                    "realname": realname,
                                    "identity": identity,
                                    "birthday": birthday,
                                    "email": email,
                                    "password": password,
                                    "tipsquestion": tipsquestion,
                                    "tipsanswer": tipsanswer,
                                    "createtime": createtime,
                                    "id": id,
                                    "sex": sex,
                                    "username": username
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
            <!--用户信息管理end-->
            <!--查看地址模态框start-->
            <div class="modal fade" id="modal-container-406229" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                我的收货地址
                            </h4>

                        </div>
                        <div class="modal-body">

                            <c:forEach items="${user.getAddresses()}" var="address">

                                <div class="col-md-8 column">
                                    收货人：${address.getReceiver()}
                                    &nbsp&nbsp邮政编码：${address.getZipcode()}
                                    <br>
                                    电话：${address.getPhone()}
                                    地址：&nbsp&nbsp${address.getSite()}
                                </div>
                                <div class="col-md-4 column">
                                    <a href="Addr.do?addrId=${address.getId()}">|编辑</a>
                                    &nbsp&nbsp<a href="/delAddress.do?addrId=${address.getId()}">删除</a>
                                </div>
                                <br>
                                <div class="page-header"></div>
                            </c:forEach>

                        </div>
                        <div class="modal-body" style="text-align: right">
                            <button type="button" class="btn btn-default btn-primary" data-dismiss="modal">关闭</button>
                        </div>
                    </div>


                </div>

            </div>
            <!--查看地址模态框end-->
            <!--增加地址模态框start-->
            <div class="modal fade" id="modal-container-704714" role="dialog" aria-labelledby="myModalLabel1"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel1">
                                添加地址
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form role="form">
                                <div class="form-group">
                                    <label for="receiver">收货人</label>
                                    <input type="text" class="form-control" id="receiver"/>
                                </div>
                                <div class="form-group">
                                    <label for="phone">电话</label>
                                    <input type="text" class="form-control" id="phone"/>
                                    <div class="alert alert-danger" id="divp" style="display:none">
                                        电话号码为11位
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="zipCode">邮政编码</label>
                                    <input type="text" class="form-control" id="zipCode"/>
                                    <div class="alert alert-danger" id="divz" style="display:none">
                                        邮政编码为6位
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="addr">地址</label>
                                    <input type="text" class="form-control" id="addr"/>
                                </div>

                            </form>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default btn-primary" onclick="addrclick()" value="提交"/>
                        </div>
                    </div>
                    <script>
                        function addrclick() {
                            var receiver = document.getElementById("receiver").value;
                            var phone = document.getElementById("phone").value;
                            var zipCode = document.getElementById("zipCode").value;
                            var addr = document.getElementById("addr").value;
                            var userId =${user.getId()};
                            if (receiver == "" || phone == "" || zipCode == "" || addr == "") {
                                alert("不能为空");
                            } else {

                                if (phone.length != 11 || isNaN(phone) != false) {
                                    document.getElementById("div1").style.display = "block";
                                }
                                if (zipCode.length != 6) {
                                    document.getElementById("div1").style.display = "block";
                                }
                                if (phone.length == 11 && isNaN(phone) == false && zipCode.length == 6 && isNaN(phone) == false) {
                                    $.ajax({
                                        url: "/InsertAddr.do",
                                        type: "POST",
                                        data: {
                                            "receiver": receiver, "phone": phone,
                                            "zipcode": zipCode, "site": addr, "userId": userId
                                        },
                                        success: function (data) {
                                            if (data == "1") {
                                                alert("添加成功");
                                                location.reload();
                                            } else {
                                                alert("添加失败");
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

                </div>

            </div>
            <!--增加地址模态框end-->
        </div>
    </div>
</div>


</body>
</html>
