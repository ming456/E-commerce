package com.neu.controller;

import com.neu.bean.Admin;
import com.neu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Description: ssm
 * Created by Administrator on 2019/7/24 17:15
 */
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    /*
     * 列出所有管理员,除了超级管理员
     * */
    @RequestMapping("/adminList.do")
    public String doAdminList(HttpServletRequest request) {
        List<Admin> admins = adminService.findAdminAll();
        admins.remove(0);
        request.setAttribute("admins",admins);
        return "/super_admin/admin/superadmin/admin_list.jsp";
    }

    @RequestMapping("/addAdmin.do")
    public String addAdmin(HttpServletRequest request) {
        String name = request.getParameter("sn");
        String password = request.getParameter("psw");
        String access = request.getParameter("access");
        Admin admin = new Admin();
        admin.setSupername(name);
        admin.setPassword(password);
        int flag=Integer.parseInt(access);
        System.out.println("权限:"+flag);
        admin.setAccess(flag);
        adminService.addAdmin(admin);
        return "redirect:/adminList.do";
    }
    //载入权限内容
    @RequestMapping("/loadAccess.do")
    public String loadAccess(HttpServletRequest request,int id) {
        Admin admin = adminService.findAdminById(id);
        request.setAttribute("admin",admin);
        return "/super_admin/admin/superadmin/access_update.jsp";
    }
    //修改权限
    @RequestMapping("/modifyAccess.do")
    public String modifyAccess(HttpServletRequest request) {
        String id = request.getParameter("id");
        String access = request.getParameter("access");
        int sid = Integer.parseInt(id);
        int flag = Integer.parseInt(access);
        Admin admin = adminService.findAdminById(sid);
        //更新权限
        admin.setAccess(flag);
        adminService.modifyAdminAccess(admin);
        return "redirect:/adminList.do";
    }
    @RequestMapping("/removeAdmin.do")
    public String removeAdmin(int id) {
        //删除admin
        adminService.removeAdmin(id);
        return "redirect:/adminList.do";
    }
}
