<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<header class="navbar navbar-fixed-top navbar-shadow">
    <div class="navbar-branding">
        <a class="navbar-brand" href="#">
            <b>E-commerce</b>
        </a>
        <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
    </div>
    <ul class="nav navbar-nav navbar-right">
        <li class="dropdown menu-merge">
            <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                <img src="${pageContext.request.contextPath }/super_admin/assets/img/avatars/5.jpg" alt="avatar" class="mw30 br64">
                <span class="hidden-xs pl15"> ${sessionScope.admin.supername} </span>
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
                        <span class="fa fa-gear"></span> 修改密码 </a>
                </li>
                <li class="dropdown-footer">
                    <a href="/logout.do" class="">
                        <span class="fa fa-power-off pr5"></span> 退出 </a>
                </li>
            </ul>
        </li>
    </ul>
</header>