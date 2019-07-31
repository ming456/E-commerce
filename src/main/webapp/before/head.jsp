<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/28
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <link href="${pageContext.request.contextPath }/before/css/common.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/before/css/daohang.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/before/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function clearValue(){
            document.myForm.mykey.value = "";
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
                        <li class="backbj"><a href="/before/Browse.jsp" target="_top">首页</a></li>
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
<div class="block clearfix">
    <div class="AreaL"style="background-color: #00a1d9">
        <!--左边菜单-->

    </div>
    <div class="AreaR" >

    </div>
</div>
</body>
</html>

