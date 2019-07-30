package com.neu.controller.Admin;

import com.neu.bean.Admin;
import com.neu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class AdminLoginController {
    @Autowired
    AdminService adminService;

    /**
     * 去登录页面
     * @param mv
     * @return
     */
    @RequestMapping("/toLogin.do")
    public ModelAndView toLogin(ModelAndView mv){
        mv.setViewName("/admin/login.jsp");
        return mv;
    }

    /**
     * 登录操作
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/login.do")
    public String login(HttpServletRequest request, HttpServletResponse response){
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Admin existAdmin=adminService.findAdmin(username,password);
        if(existAdmin!=null){
            //用户存在且密码正确
            System.out.println("帐号" + username + "密码" + password);
            request.setAttribute("existAdmin",existAdmin);
            //权限判定
            Integer access = existAdmin.getAccess();
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
    public String loginOut(HttpServletRequest request){
        request.getSession().invalidate();
        return "/login.jsp";
    }

}
