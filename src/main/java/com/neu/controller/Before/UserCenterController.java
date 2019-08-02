package com.neu.controller.Before;

import com.neu.service.UserCenterService;
import com.neu.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserCenterController {
    @Autowired
    private UserCenterService userCenterService;
    /**
     * 游客、用户查询订单
     * @return
     */
    @RequestMapping("/userCenter.do")
    public String SelectOrder(HttpServletRequest request,HttpSession session,Model model)
    {
        String datatime1 = request.getParameter("datatime1");
        String datatime2 = request.getParameter("datatime2");
        //判断用户是否输入订单号
        if(request.getParameter("orderNum")==""){
            return userCenterService.userCenter2(session,MyUtil.getUserId(session),datatime1,datatime2,model);
        }
        else{
            Integer orderNum = Integer.valueOf(request.getParameter("orderNum"));

            return userCenterService.userCenter1(session, orderNum, MyUtil.getUserId(session), datatime1, datatime2, model);

        }
    }
    @RequestMapping("/userCenterone.do")
    public String SelectOrderone(HttpServletRequest request,HttpSession session,Model model){
        if(request.getParameter("orderNum")==""){
            model.addAttribute("message","订单号不能为空！");
            return "before/userCenterone.jsp";
        }
        Integer orderNum = Integer.valueOf(request.getParameter("orderNum"));
        String datatime1 = request.getParameter("datatime1");
        String datatime2 = request.getParameter("datatime2");
        return  userCenterService.userCenter(orderNum,datatime1,datatime2,model);
    }
    @RequestMapping("/orderDetail.do")
    public String OrderDetail(Integer ordersn,Model model)
    {
        return userCenterService.userCenter3(ordersn,model);
    }
}
