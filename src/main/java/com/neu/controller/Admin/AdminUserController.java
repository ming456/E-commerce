package com.neu.controller.Admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neu.bean.Goods;
import com.neu.bean.User;
import com.neu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AdminUserController {
    @Autowired
    UserService userService;
    //列出所有用户
    @RequestMapping("/listAllUser.do")
    public String listAllUser(@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpServletRequest request){
        // 这不是一个分页查询；
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 5);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<User> users = userService.findAllUser();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users);
        request.setAttribute("pageInfo", page);
        //request.setAttribute("users",users);
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
