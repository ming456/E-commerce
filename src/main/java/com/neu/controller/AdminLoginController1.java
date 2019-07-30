/*
 * 管理员权限说明
 * 0为超级管理员
 * 既能进入普通管理员页面，也能进入系统管理员页面，默认进入系统管理员页面，
 * 可进行全操作
 * 1为普通管理员
 * 既能进入普通管理员页面，也能进入系统管理员页面，默认进入普通管理员页面，
 * 只能操作用户信息管理
 * 2为最普通管理员
 * 只能进入普通管理员页面
 * */
package com.neu.controller;

import com.neu.bean.Admin;
import com.neu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AdminLoginController1 {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/toLogin1.do")
    public String toLogin() {

        return "/super_admin/admin/superadmin/login.jsp";
    }

    @RequestMapping("/login1.do")
    public String login(HttpServletRequest request, HttpSession session) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("帐号" + username + "密码" + password);
        Admin admin = adminService.findAdminByName(username);
        //是否有该管理员
        if(admin==null){
            return "/super_admin/admin/superadmin/login.jsp";
        }
        String psw = admin.getPassword();
        //密码正确
        if (psw.equals(password)) {
            session.setAttribute("admin",admin);
            System.out.println("帐号密码正确.....");
            //权限判定
            Integer access = admin.getAccess();
            //0超级管理员
            if (access.equals(0)) {
                return "redirect:/adminList.do";
            }else if (access.equals(1)){
                return "redirect:/adminList.do";
            }else{
                return "/super_admin/admin/superadmin/login.jsp";
            }
        }
        return "/super_admin/admin/superadmin/login.jsp";
    }

    @RequestMapping("/logout.do")
    public String logOut(HttpSession session){
        session.removeAttribute("admin");
        return "/super_admin/admin/superadmin/login.jsp";
    }
}
