<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../css/before/daohang.css" rel="stylesheet" type="text/css" />
    <link href="../css/before/common.css" rel="stylesheet" type="text/css" />
    <link href="../css/before/style.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.0.js" type="text/javascript"/>
    <%--<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>--%>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
</head>

<body>
<iframe src="${pageContext.request.contextPath}/before/head.jsp" width="100%"> </iframe>
<div class="clearfix">
    <div class="blank20"></div>
    <div class="box4">
        <div>${pageContext.request.contextPath}</div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="100%" valign="bottom">
                    <h2>普通会员注册</h2>
                </td>
            </tr>
        </table>
    </div>
    <div class="blank10"></div>
    <div class="box4">
        <div class="case_ll clearfix">
            <div class="regist">
                <form action="/addUser.do" method="post" name="registerForm" id="registerForm">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0"
                           class="ttbb2">
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                               用户名：
                            </td>
                            <td width="59%">
                                <input type="text" name="userName" id="userName" class="my_txt_350"/>
                                <label class="cl_f30" id="display"></label>
                            </td>

                        </tr>
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                性别：
                            </td>
                            <td width="59%">
                                <select name="sex">
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                </select>
                            </td>
                            <td width="25%"></td>
                        </tr>
                        <tr>
                            <td align="right"><span class="cl_f30">*</span>
                                密码：
                            </td>
                            <td><input type="password" name="bpwd" id="textfield2"
                                       class="my_txt_350" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
                                （为了您帐户的安全，建议使用字符+数字等多种不同类型的组合，且长度大于5位。）</td>
                        </tr>
                        <tr>
                            <td align="right"><span class="cl_f30">*</span>
                                重复密码：
                            </td>
                            <td><input type="password" name="rebpwd" id="textfield3"
                                       class="my_txt_350" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
                                （确保您记住密码。）</td>
                        </tr>
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                安全问题：
                            </td>
                            <td width="59%">
                                <select name="tipsQuestion">
                                    <option value="你妈妈是谁？">你妈妈是谁？</option>
                                    <option value="你爸爸是谁？">你爸爸是谁？</option>
                                    <option value="你小学的学校？">你小学的学校？</option>
                                    <option value="你中学的学校？">你小学的学校？</option>
                                </select>
                            </td>
                            <td width="25%"></td>
                        </tr>
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                答案：
                            </td>
                            <td width="59%"><input type="text" name="tipsAnswer"
                                                   id="textfield4" class="my_txt_350" /></td>
                            <td width="25%"></td>
                        </tr>
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                真实姓名：
                            </td>
                            <td width="59%"><input type="text" name="realName"
                                                   id="textfield5" class="my_txt_350" /></td>
                            <td width="25%"></td>
                        </tr>
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                身份证：
                            </td>
                            <td width="59%"><input type="text" name="card"
                                                   id="textfield6" class="my_txt_350" /></td>
                            <td width="25%"></td>
                        </tr>
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                邮箱：
                            </td>
                            <td width="59%"><input type="text" name="email"
                                                   id="textfield7" class="my_txt_350" /></td>
                            <td width="25%"></td>
                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
                                （有效的E-mail地址才能收到激活码，帐户在激活后才能享受网站服务。）</td>
                        </tr>
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                生日：
                            </td>
                            <td width="59%">
                                <input type="date"name="birthday" id="qwe"/>
                            </td>
                            <td width="25%"></td>
                        </tr>
                        <tr>
                            <td align="right"><span class="cl_f30">*</span>
                                验证码：
                            </td>
                            <td class="ared"><input type="text" name="code"
                                                    id="code1" class="my_txt_120" />
                                <img id="code" src="/validateCode.do" />
                                <a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
                                <label class="cl_f30" id="display1"></label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">${message4}</td>


                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td height="50"><input type="button" name="button" id="button" onclick="checkForm()" value="注册账号" class="my_ann1" /></td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </form>
                <div class="blank20"></div>
            </div>
        </div>
    </div>
    <div class="blank10"></div>
</div>
<script type="text/javascript">

    //刷新验证码
    function refreshCode(){
        document.getElementById("code").src = "/validateCode.do?" + Math.random();
    }
    //表单验证
    function checkForm(){
        var bpwd = document.registerForm.bpwd.value;
        var rebpwd = document.registerForm.rebpwd.value;
        if(bpwd != rebpwd){
            alert("两次密码不一致！");
            return false;
        }
        document.registerForm.submit();
        return true;
    }
    $(function() {
        // 用户名唯一性校验
        $('#userName').bind('input propertychange', function () {
            var username = $("#userName").val();
            if (username == null || username.length < 1) {
                $('#display').text("用户名不为空");
            } else {

                //ajax请求
                $.ajax({
                    url: "${pageContext.request.contextPath}/checkUserNameServlet.do",
                    type: "POST",
                    data: $("#registerForm").serialize(),
                    success: function (result) {
                        // alert(result);
                        //学生保存成功
                        //1、模态框关闭
                        if (result == 1) {
                            $('#display ').text("该用户名已存在");
                            $("#button").attr("disabled",true);   //禁用按钮
                        } else  {
                            $('#display ').text("用户名可以使用");
                            $("#button").attr("disabled",false);   //恢复按钮
                        }
                    }
                });
            }
        });
    });
    $(function() {
        // 验证码校验
        $('#code1').bind('input propertychange', function () {
            var cod = $("#code1").val();
            if (cod == null || cod.length < 1) {
                $('#display1 ').text("验证码不为空");
            } else {

                //ajax请求
                $.ajax({
                    url: "${pageContext.request.contextPath}/checkcode.do",
                    type: "POST",
                    data: $("#registerForm").serialize(),
                    success: function (result) {
                        // alert(result);
                        //学生保存成功
                        //1、模态框关闭
                        if (result == 1) {
                            $('#display1 ').text("验证码正确");

                        } else  {
                            $('#display1 ').text("请输入验证码");

                        }
                    }
                });
            }
        });
    });
</script>
</body>
</html>
