<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <title>订单详情</title>
    <link href="${pageContext.request.contextPath }/css/before/daohang.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/css/before/common.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/css/before/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="blank"></div>
<div class="block clearfix">
    <div class="location ared">
        订单详情
    </div>
    <div class="blank"></div>
    <div>
        <div class="nFlowBox">
            <table width="99%" align="center" border="0" cellpadding="5"
                   cellspacing="1" bgcolor="#dddddd">
                <tr>
                    <th>商品编号</th>
                    <th>商品名称</th>
                    <th>商品图片</th>
                    <th>商品价格</th>
                    <th>购买数量</th>
                </tr>
                <tr>
                    <td colspan="5" height="15px"
                        style="border: 0 none; background: #FFF"></td>
                </tr>
                <c:forEach var="mf" items="${myOrderDetail}">
                    <tr>
                        <td bgcolor="#ffffff" align="center">${mf.goodsid}</td>
                        <td bgcolor="#ffffff"  align="center">${mf.goodsName}</td>
                        <td align="center" bgcolor="#ffffff" height="60px"> <img
                                style="width: 50px; height: 50px;"
                                src="${mf.imgpath}" border="0"
                                title="${mf.title}" /> </td>
                        <td align="center" bgcolor="#ffffff">${mf.price}</td>
                        <td align="center" bgcolor="#ffffff">${mf.goodsnum}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>