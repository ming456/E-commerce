<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/28
  Time: 0:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <link href="css/before/common.css" rel="stylesheet" type="text/css" />
    <link href="css/before/daohang.css" rel="stylesheet" type="text/css" />
    <link href="css/before/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script type="text/javascript">
        function openNotice(url){
            window.open (url, '站内公告', 'height=400, width=400, top=100, left=100, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=n o, status=no');
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
                    <td><span class="xx">|</span><a href="userCenter.html" target="_top">用户中心</a><span
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
            <img src="/before/image/mylogo.png" />
        </div>
        <div class="back_search">
            <div class="back_search_red">
                <form  method="post" action="/searchgoods.do?pa=1">
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
   <!-- <script type="text/javascript">
       function searchclick(){
          //var mykeyvalue=$('#mykey').val();
           $.ajax({

               url:"${pageContext.request.contextPath }/searchgoods.do",
               type:"POST",
               data:"searchvalue="+mykeyvalue

           });
       }

    </script>-->
    <!--红色 导航-->
    <div class="skin_a">
        <div class="front_daohangbj">
            <div class="all_zong">
                <div class="front_daohang">
                    <ul>
                        <li class="backbj"><a href="/Browse.do" target="_top">首页</a></li>
                        <!-- 显示商品类型 -->
                        <li><a href="index.html" target="_top">水果</a></li>
                        <li><a href="index.html" target="_top">服装</a></li>
                        <li class="buy">
                            <p class="car">
                                <a href="cart.html" target="_top">购物车</a>
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
    <div class="AreaL">
        <!--左边商品-->
        <div class="box">
            <div class="box_2">
                <div class="top10Tit">
                    <span>销量排行</span>
                </div>
                <div class="top10List clearfix">
                    <c:forEach items="${goodsSum}" var="good">

                        <ul class="clearfix">
                            <li class="topimg">
                                <a href="goodsdetail.do?id=${good.getId()}">
                                    <img class="samllimg" alt="" src="${good.getImgpath()}" /></a></li>
                            <li class="iteration1">
                                <a href="goodsdetail.do?id=${good.getId()}">${good.getGoodsname()}</a><br />
                                售价<font class="f1">￥${good.getPrice()}元</font><br /></li>
                        </ul>
                    </c:forEach>

                </div>
            </div>
        </div>
        <!--销售排行 end -->
        <!--人气排行-->
        <div class="blank5"></div>
        <div class="box">
            <div class="box_2">
                <div class="top10Tit">
                    <span>人气排行</span>
                </div>
                <div class="top10List clearfix">
                    <c:forEach items="${goodCount}" var="good1">
                        <ul class="clearfix">
                            <li class="topimg">
                                <a href="goodsdetail.do?id=${good1.getId()}">
                                    <img class="samllimg" alt="" src="${good1.getImgpath()}" /></a></li>
                            <li class="iteration1">
                                <a href="goodsdetail.do?id=${good1.getId()}">${good1.getGoodsname()}</a><br />
                                售价<font class="f1">￥${good1.getPrice()}元</font><br /></li>
                        </ul>
                    </c:forEach>

                </div>
            </div>
        </div>
        <!--人气排行 end -->
    </div>
    <div class="AreaR">
        <div class="AreaR">
            <div class="AreaM clearfix">
                <div id="focus">
                    <a href="">
                        <img class="samllimg" alt="" src="/images/before/540.jpg" /></a>
                </div>
            </div>
            <div class="AreaRR clearfix">
                <!--公告栏-->
                <div class="box">
                    <div class="box_1">
                        <div class="title_bt">
                            <h3>公告栏</h3>
                        </div>
                        <div class="post_list ared">
                            <ul>
                                <li><a href="javascript:openNotice('noticeDetail.html');">公告1</a></li>
                                <li><a href="javascript:openNotice('noticeDetail.html');">公告2</a></li>
                                <li><a href="javascript:openNotice('noticeDetail.html');">公告3</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--公告栏 end-->
            </div>
        </div>
        <div class="AreaR">
            <!--最新商品列表-->
            <div class="blank5"></div>
            <div class="box">
                <div class="box_color ared">
                    <div class="title_bt">
                        <span><a href="#">更多</a></span>
                        <h3>最新商品</h3>
                    </div>
                    <div class="itemgood_nr clearfix">
                        <ul>
                            <c:forEach items="${goodslist}" var="good">
                                <li>
                                    <div>
                                        <p class="pic">
                                            <a href="goodsdetail.do?id=${good.getId()}">
                                                <img src="${good.getImgpath()}" /></a>
                                        </p>
                                        <p class="wz">
                                            <strong><a href="goodsdetail.do?id=${good.getId()}">${good.getGoodsname()}</a></strong>
                                            <em>现价:<span>￥${good.getPrice()}</span></em>
                                        </p>
                                    </div>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                </div>
            </div>
            <!--最新商品列表end-->
        </div>
    </div>
</div>
</body>
</html>

