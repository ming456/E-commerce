package com.neu.controller.Before;

import com.neu.service.UserCenterService;
import com.neu.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;

@Controller
public class UserCenterController {
    @Autowired
    private UserCenterService userCenterService;
    /**
     * 订单查询
     * @param session
     * @param myUtil
     * @param id
     * @return
     */
    @RequestMapping("/userCenter.do")
    public String SelectOrder(HttpSession session, MyUtil myUtil, Integer id, Model model)
    {
//        //判断是否为游客或者是用户
//        if(MyUtil.getUserId(session)!=null)//用户
//        {
//            if(id==null){
//                return userCenterService.userCenter2(session,myUtil,model);
//            }
//            else
//                return userCenterService.userCenter1(id,myUtil,model);
//
//         }
//        else//游客
//           return  userCenterService.userCenter(id,myUtil,model);
        return userCenterService.myOrder(1,model);

    }
    @RequestMapping("/orderDetail.do")
    public String OrderDetail(Integer ordersn,Model model)
    {
        return userCenterService.userCenter3(ordersn,model);
    }
}
