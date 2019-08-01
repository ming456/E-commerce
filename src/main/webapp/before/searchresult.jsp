<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/28
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>搜索结果</title>
    <link href="${pageContext.request.contextPath }/css/before/common.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/css/before/daohang.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/css/before/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
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
                    <c:if test="${user!=null}"><td><span class="xx">|</span><a href="/usermanage.do" target="_top">个人中心</a><span
                            class="xx">|</span></td></c:if>
                    <td><span class="xx">|</span><a href="/userCenter.do" target="_top">订单管理</a><span
                            class="xx">|</span></td>
                    <!-- 没有登录 -->
                    <<!-- 没有登录 -->
                    <c:if test="${user!= null}">
                        <td><a href="/userlogout.do">退出</a><span
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
            <img src="${pageContext.request.contextPath }/images/before/mylogo.png" />
        </div>
        <div class="back_search">
            <div class="back_search_red">
                <form  method="post" action="/searchgoods.do">
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
<div class="block clearfix">
    <div class="location ared">当前位置： <a href="/Browse.do">首页</a> > 搜索结果</div>
    <div class="blank"></div>
    <div>
        <div class="nFlowBox">
            <table width="99%" align="center" border="0" cellpadding="5"
                   cellspacing="1" bgcolor="#dddddd">
                <tr>
                    <th>商品编号</th>
                    <th>商品名称</th>
                    <th>商品详情</th>
                    <th>商品图片</th>
                    <th>商品价格</th>
                    <th>去看看</th>
                </tr>
                <tr>
                    <td colspan="6" height="15px"
                        style="border: 0 none; background: #FFF"></td>
                </tr>
                <c:forEach items="${goodsList}" var="good">

                    <tr>
                        <td bgcolor="#ffffff" align="center">${good.getId()}</td>
                        <td bgcolor="#ffffff" align="center">${good.getGoodsname()}</td>
                        <td bgcolor="#ffffff" align="center">${good.getDetails()}</td>
                        <td align="center" bgcolor="#ffffff" height="60px"><img
                                style="width: 50px; height: 50px;"
                                src="${good.getImgpath()}" border="0" title="${good.id}" />
                        </td>
                        <td bgcolor="#ffffff" align="center">${good.getPrice()}</td>
                        <td align="center" bgcolor="#ffffff"><a
                                style="text-decoration: none;" class="f6"
                                href="/goodsdetail.do?id=${good.getId()}">去看看</a></td>
                    </tr>

                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>