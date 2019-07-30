package com.neu.controller.Admin;

import com.neu.bean.User;
import com.neu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AdminUserController {
    @Autowired
    UserService userService;
    //列出所有用户
    @RequestMapping("/listAllUser.do")
    public String listAllUser(HttpServletRequest request){
        List<User> users = userService.findAllUser();
        request.setAttribute("users",users);
        return "/admin/user_list.jsp";
    }
    @RequestMapping("/removeUser.do")
    public String removeUser(int id) {
        //删除user
        userService.removeUser(id);
        return "redirect:/listAllUser.do";
    }
    //查看用户详情
    @RequestMapping("/userDetail.do")
    public String userDetail(HttpServletRequest request,int id){
        User user = userService.findUserById(id);
        request.setAttribute("user",user);
        return "/admin/user_detail.jsp";
    }
}
