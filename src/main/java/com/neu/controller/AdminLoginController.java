package com.neu.controller;

import com.neu.bean.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class AdminLoginController {

    @RequestMapping("/tologin.do")
    public ModelAndView toLogin(ModelAndView mv){
        mv.setViewName("redirect:/login.jsp");
        return mv;
    }
    @RequestMapping("/login.do")
    public String login(HttpServletRequest request, HttpServletResponse response){
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        System.out.println("帐号"+username+"密码"+password);
        if(username.equals("com")&&password.equals("123456")){
            System.out.println("帐号密码正确.....");
            Admin admin=new Admin();
            admin.setSupername(username);
            admin.setPassword(password);
            return "admin/category_list.jsp";
        }else{
            request.setAttribute("msg","帐号密码不正确");
            return "/login.jsp";
        }
    }

}
