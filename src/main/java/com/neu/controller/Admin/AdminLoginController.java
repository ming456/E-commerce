package com.neu.controller.Admin;

import com.neu.bean.Admin;
import com.neu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AdminLoginController {
    @Autowired
    AdminService adminService;

    /**
     * 去登录页面
     * @return
     */
    @RequestMapping("/toLogin.do")
    public String toLogin(HttpServletRequest request){
        return "/admin/login.jsp";
    }

    /**
     * 登录操作
     * @param
     * @param
     * @return
     */
    @RequestMapping(value = "/login.do")
    public String login(HttpServletRequest request, HttpSession session){
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Admin existAdmin=adminService.findAdmin(username,password);
        if(existAdmin!=null){
            //用户存在且密码正确
            System.out.println("帐号" + username + "密码" + password);
            request.setAttribute("existAdmin",existAdmin);
            //权限判定
            session.setAttribute("user",existAdmin);
            return "/findType.do";
        }else{
            //登录失败
            request.setAttribute("msg","帐号密码不正确");
            return "/admin/login.jsp";
        }
    }
    /**
     * 退出登录
     */
    @RequestMapping("/loginout.do")
    public String loginOut(HttpSession session){
        session.invalidate();
        return "/toLogin.do";
    }

}
