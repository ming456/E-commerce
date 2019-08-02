<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>首页</title>
	<link href="../css/before/daohang.css" rel="stylesheet" type="text/css" />
	<link href="../css/before/common.css" rel="stylesheet" type="text/css" />
	<link href="../css/before/style.css" rel="stylesheet" type="text/css" />
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
                    <c:if test="${user!=null}">
					<td><span class="xx">|</span><a href="before/userCenter.jsp" target="_top">订单管理</a><span
							class="xx">|</span></td>
					</c:if>
					<c:if test="${user==null}">
						<td><span class="xx">|</span><a href="before/userCenterone.jsp" target="_top">订单管理</a><span
								class="xx">|</span></td></c:if>
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
			<img src="../images/before/mylogo.png" />
		</div>
		<div class="back_search">
			<div class="back_search_red">
				<form action="/searchgoods.do" name="myForm" method="post">
					<div class="div2">
						<input type="text" name="searchgoods" class="txt" value="请输入您要查询的内容"  onfocus="clearValue()"/>
					</div>
					<div class="div1">
						<input type="submit" class="an"  value="搜索" />
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
						<li><a href="index.html" target="_top">水果</a></li>
						<li><a href="index.html" target="_top">服装</a></li>
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
</body>
</html>
