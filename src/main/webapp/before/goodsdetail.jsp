<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/29
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商品详情</title>
    <link href="${pageContext.request.contextPath }/css/before/common.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/css/before/daohang.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/css/before/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
        function goCart() {
            document.putcartform.submit();
        }
        function gofocus() {
            window.location.href = "goodsdetail.jsp" ;
        }
    </script>
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
                            <a href="login.html" target="_top">登录</a>
                        </p>
                    </td>
                    <td>
                        <p>
                            <a href="register.html" target="_top">注册</a>
                        </p>
                    </td>
                    <td><span class="xx">|</span><a href="/userCenter.do" target="_top">用户中心</a><span
                            class="xx">|</span></td>
                    <!-- 没有登录 -->
                    <td><a href="login.html" target="_top">退出</a><span
                            class="xx">|</span></td>
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
<form  action="/putCart.do" name="putcartform" method="post">
    <div class="blank"></div>
    <div class="block clearfix">
        <div class="location ared">
            当前位置：<a href="${pageContext.request.contextPath }/before/Browse.jsp">首页</a> > <a href="#">商品详情</a>
        </div>
        <div class="blank"></div>
        <div id="goodsInfo">
            <div class="imgInfo">
                <input type="hidden" id="goodsId" name="goodsId"
                       value="${good.getId()}"/><img
                    src="${good.getImgpath()}"
                    width="230px" height="230px" />
            </div>
        </div>
        <!--商品表述-->
        <div class="goods_desc">
            <div class="bt">
               ${good.getGoodsname()}
            </div>
            <div class="goods_show">
                <ul>
                    <li><span>商品标题:</span> <strong class="yj">${good.getTitle()}</strong></li>
                    <li><span>商品详情:</span> <strong class="yj">${good.getDetails()}</strong></li>
                    <li><span>价格:</span><strong
                            class="xj">${good.getPrice()}</strong>
                    </li>

                    <li><span>购买数量:</span><input type="text" name="shoppingnum"
                                                 class="good_txt" value="1" /> (库存${good.getCount()}件)</li>
                </ul>
            </div>
            <p class="bottom10 top5">
                <img src="${pageContext.request.contextPath }/images/before/goods_ann2.gif" style="cursor: pointer"
                     onclick="goCart()" />
                &nbsp;&nbsp;
            </p>
        </div>
        <!--end-->
    </div>
</form>
</body>
</html>
