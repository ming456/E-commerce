<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../css/before/daohang.css" rel="stylesheet" type="text/css" />
    <link href="../css/before/common.css" rel="stylesheet" type="text/css" />
    <link href="../css/before/style.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.0.js" type="text/javascript"/>
    <script language="javascript" type="text/javascript" src="/js/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
<iframe src="before/head.jsp" width="100%"> </iframe>
<div class="clearfix">
    <div class="blank20"></div>
    <div class="box4">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="100%" valign="bottom">
                    <h2>普通会员登录</h2>
                </td>
            </tr>
        </table>
    </div>
    <div class="blank10"></div>
    <div class="box4">
        <div class="case_ll clearfix">
            <div class="regist">
                <form action="/loginUser.do" method="post" name="loginForm" id="loginForm">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0"
                           class="ttbb2">
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                用户名：
                            </td>
                            <td width="59%">
                                <input type="text" name="userName" id="userName" class="my_txt_350" value=" "/>
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><span class="cl_f30">*</span>
                                密码：
                            </td>
                            <td>
                                <input type="password" name="password" id="textfield2" class="my_txt_350" />
                                <a href="before/findpassword.jsp" target="_top"><font color="blue">忘记密码？</font></a>
                            </td>
                        </tr>

                        <tr>
                            <td align="right"><span class="cl_f30">*</span>
                                验证码：
                            </td>
                            <td class="ared">
                                <input type="text" name="code" id="code1" class="my_txt_120" />
                                <img id="code" src="/validateCode.do"/>
                                <a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
                            </td>
                            <!--
                            <tr>
			<td>验证码：</td>
			<td><input type="text" name="code" class="textSize"/></td>
		</tr>
		<tr>
			<td>
				<img id="code" src="validateCode"/>
			</td>
			<td class="ared">
				<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
			</td>
		</tr>
                            -->
                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td align="right">&nbsp;</td>
                            <td ><label class="cl_f30" id="display1"></label></td>
                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td height="50"><input type="button" name="button" id="button" onclick="checkForm()" value="登录账号" class="my_ann1" /></td>
                            <td><p class="cl_f30">${message2}</p></td>
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

        document.loginForm.submit();
    }

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
                    data: $("#loginForm").serialize(),
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
