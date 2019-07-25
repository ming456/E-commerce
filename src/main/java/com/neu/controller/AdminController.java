package com.neu.controller;

import com.neu.bean.Admin;
import com.neu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Description: ssm
 * Created by Administrator on 2019/7/24 17:15
 */
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

   @RequestMapping("/register.do")
    public String doRegister(Admin admin, Model model) {
        if (adminService.addAdmin(admin)) {
            model.addAttribute("admin",admin);
            return "/index.jsp";
        } else {
            return "/addStu.jsp";
        }
    }
}
