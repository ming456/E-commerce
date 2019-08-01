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
<iframe src="${pageContext.request.contextPath}/before/head.jsp" width="100%"> </iframe>
<div class="clearfix">
    <div class="blank20"></div>
    <div class="box4">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="100%" valign="bottom">
                    <h2>请输入新密码</h2>
                </td>
            </tr>
        </table>
    </div>
    <div class="blank10"></div>
    <div class="box4">
        <div class="case_ll clearfix">
            <div class="regist">
                <form action="/findUser2.do" method="post" name="loginForm" id="loginForm">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0"
                           class="ttbb2">
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                新密码：
                            </td>
                            <td width="59%">
                                <input type="password" name="bpwd"  class="my_txt_350" />
                            </td>
                        </tr>
                        <tr>
                            <td width="16%" align="right"><span class="cl_f30">*</span>
                                确认密码：
                            </td>
                            <td width="59%"><input type="password" name="rebpwd"
                                                   id="textfield4" class="my_txt_350" /></td>
                            <td width="25%"></td>
                        </tr>
                        <tr>
                            <td align="right">&nbsp;</td>
                            <td height="50"><input type="button" name="button" id="button" onclick="checkForm()" value="确定" class="my_ann1" /></td>
                            <td><p class="cl_f30">${message1}</p></td>
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
    //表单验证
    function checkForm(){

        document.loginForm.submit();
    }

</script>
</body>
</html>


