<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="navbar navbar-fixed-top navbar-shadow">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand" href="#">
                <b>油画商城</b>
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown menu-merge">
                <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                    <img src="${pageContext.request.contextPath }/images/img/avatars/5.jpg" alt="avatar" class="mw30 br64">
                    <span class="hidden-xs pl15"> ${ existUser.username } </span>
                    <span class="caret caret-tp hidden-xs"></span>
                </a>
                <ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
                    <li class="list-group-item">
                        <a href="#" class="animated animated-short fadeInUp">
                            <span class="fa fa-user"></span> 个人信息
                            <span class="label label-warning"></span>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="#" class="animated animated-short fadeInUp">
                            <span class="fa fa-gear"></span> 设置密码 </a>
                    </li>
                    <li class="dropdown-footer">
                        <a href="/loginout.do" class="">
                            <span class="fa fa-power-off pr5"></span> 退出 </a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
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
                        <div class="media-author">管理员:${sessionScope.user.supername}</div>
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
