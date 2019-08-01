package com.neu.controller.Admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neu.bean.Address;
import com.neu.bean.Orders;
import com.neu.bean.User;
import com.neu.service.AdminOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AdminOrderController {
    @Autowired
    AdminOrderService adminOrderService;

    /**
     * 查询所有订单信息
     * @param request
     * @return
     */
    @RequestMapping("/findAllOrder.do")
    public String findAll(@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpServletRequest request){
        int pageSize = 5;//每页显示多少条数据
        //在查询之前需要调用startPage方法，传入页码，每页显示的记录
        PageHelper.startPage(pn, pageSize);
        List<Orders> list=adminOrderService.findAll();
        PageInfo page = new PageInfo(list, 5);
        request.setAttribute("pageInfo",page);
        return "admin/order_list.jsp";
    }

    /**
     * 根据订单id查询订单明细
     * @return
     */
    @RequestMapping("/findById.do")
    public String findById(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        Orders orders=adminOrderService.orderdetailgoods(id);
        request.setAttribute("orders",orders);
        return "admin/order_detail.jsp";
    }

    /**
     * 根据id删除订单
     * @param request
     * @return
     */
    @RequestMapping("/delete.do")
    public String delete(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        adminOrderService.delete(id);
        return "/findAllOrder.do";
    }

    /**
     * 查询用户收货相关信息
     * @param request
     * @return
     */
    @RequestMapping("/findUser.do")
    public String findUser(HttpServletRequest request){
            int id=Integer.parseInt(request.getParameter("id"));
            User user=adminOrderService.findUser(id);
            request.getSession().setAttribute("user",user);
            return "admin/order_user.jsp";
    }

    /**
     * 去修改用户收货信息页面
     * @return
     */
    @RequestMapping("/toedit.do")
    public String toEditUser(){
        return "admin/order_useredit.jsp";
    }

    @RequestMapping("/edituser.do")
    public String editUser(HttpServletRequest request){
        System.out.println("进来了.....");
        String username=request.getParameter("username");
        String realname=request.getParameter("realname");
        String zipcode=request.getParameter("zipcode");
        String phone=request.getParameter("phone");
        String site=request.getParameter("site");
        System.out.println(username+","+realname+","+zipcode+","+phone+","+site);
        User user=new User();
        Address address=new Address();
        user.setUsername(username);
        user.setRealname(realname);
        address.setPhone(phone);
        address.setSite(site);
        address.setZipcode(zipcode);
        user.setAddress(address);
        System.out.println(user);
        request.getSession().setAttribute("user",user);
        return "admin/order_user.jsp";
    }



}
