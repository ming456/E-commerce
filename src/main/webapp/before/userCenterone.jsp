<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-07-29
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="head.jsp"></jsp:include>
<html>
<head>
    <base href="<%=basePath%>">
    <title>用户中心</title>
    <link href="${pageContext.request.contextPath }/css/before/daohang.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/css/before/common.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/css/before/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="blank"></div>
<div class="block clearfix">
    <div class="location ared">
        我的订单
    </div>
    <div class="blank"></div>
    <div>
        <div class="nFlowBox">
            <table>
                <tr>
                    <form action="/userCenterone.do" method="post">
                    <th>
                        ${message}
                        <label>订单号：<input type="text" name="orderNum" placeholder="订单号不能为空"/></label>
                    </th>
                    <th>
                        <label>时间段：<input type="date" name="datatime1"/>&nbsp;至&nbsp;<input type="date" name="datatime2"/></label>
                    </th>
                    <th>
                        <label><input type="submit" value="提交"/></label>
                    </th>
                    </form>
                </tr>
            </table>
            <!--<c:if test="${not empty myOrder }">-->
            <table width="99%" align="center" border="0" cellpadding="5"
                   cellspacing="1" bgcolor="#dddddd">
                <tr>
                    <th>订单编号</th>
                    <th>订单金额</th>
                    <th>订单日期</th>
                    <th>订单状态</th>
                    <th>详情</th>
                </tr>
                <tr>
                    <td colspan="5" height="15px"
                        style="border: 0 none; background: #FFF"></td>
                </tr>
                <c:forEach var="mo" items="${myOrder}">
                    <tr>
                        <td bgcolor="#ffffff" align="center">${mo.orderNum}</td>
                        <td bgcolor="#ffffff"  align="center">${mo.totalPay}</td>
                        <td align="center" bgcolor="#ffffff">${mo.createTime}</td>
                        <td bgcolor="#ffffff"  align="center">
                            <c:if test="${mo.orderStatus == 0}" >
                                未付款&nbsp;&nbsp;
                                <a style="text-decoration: none;" class="f6" href="order/pay?ordersn=${mo.id}">去支付</a>
                            </c:if>
                            <c:if test="${mo.orderStatus == 1}" >已付款</c:if>
                        </td>
                        <td align="center" bgcolor="#ffffff">
                            <a style="text-decoration: none;" class="f6" href="orderDetail.do?ordersn=${mo.id}" target="_top">详情</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
           <!-- </c:if>-->
        </div>
    </div>
</div>
</body>
</html>
