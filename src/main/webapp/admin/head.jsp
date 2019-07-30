<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="navbar navbar-fixed-top navbar-shadow">
    <div class="navbar-branding">
        <a class="navbar-brand" href="../index.html">
            <H3>电子商务后台管理系统</H3>
        </a>
        <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
    </div>
</header>
<aside id="sidebar_left" class="nano nano-light affix">
    <div class="sidebar-left-content nano-content">
        <header class="sidebar-header">
            <div class="sidebar-widget author-widget">
                <div class="media">
                    <a class="media-left" href="#">
                        <img src="../images/head.jpg" class="img-responsive">
                    </a>
                    <div class="media-body">
                        <div class="media-author">管理员:${existAdmin.supername}</div>
                        <div class="media-links">
                            <a href="/loginout.do">退出</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sidebar-widget search-widget hidden">
                <div class="input-group">
                        <span class="input-group-addon">
                        <i class="fa fa-search"></i>
                        </span>
                    <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                </div>
            </div>
        </header>
        <ul class="nav sidebar-menu">
            <li class="sidebar-label pt20">商品管理</li>
            <li class="active">
                <a href="/findGoods.do">
                    <span class="glyphicon glyphicon-book"></span>
                    <span class="sidebar-title">商品列表</span>
                </a>
            </li>
            <li>
                <a href="/toAddGoods.do">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="sidebar-title">商品上架</span>
                </a>
            </li>
            <li class="sidebar-label pt20">分类管理</li>
            <li class="active">
                <a href="/findType.do">
                    <span class="glyphicon glyphicon-book"></span>
                    <span class="sidebar-title">分类列表</span>
                </a>
            </li>
            <li>
                <a href="/toAdd.do">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="sidebar-title">添加分类</span>
                </a>
            </li>
            <li class="sidebar-label pt20">订单管理</li>
            <li class="active">
                <a href="/findAllOrder.do">
                    <span class="glyphicon glyphicon-book"></span>
                    <span class="sidebar-title">订单列表</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="sidebar-title">订单</span>
                </a>
            </li>

            <li class="sidebar-label pt20">管理员信息管理</li>
            <li class="active">
                <a href="/adminList.do">
                    <span class="glyphicon glyphicon-book"></span>
                    <span class="sidebar-title">管理员列表</span>
                </a>
            </li>
            <li class="sidebar-label pt20">用户信息管理</li>
            <li class="active">
                <a href="/listAllUser.do">
                    <span class="glyphicon glyphicon-book"></span>
                    <span class="sidebar-title">用户列表</span>
                </a>
            </li>
        </ul>

        <div class="sidebar-toggle-mini">
            <a href="#">
                <span class="fa fa-sign-out"></span>
            </a>
        </div>
    </div>
</aside>
