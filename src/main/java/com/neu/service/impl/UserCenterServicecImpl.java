package com.neu.service.impl;

import com.neu.dao.UserCenterMapper;
import com.neu.service.UserCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Service("userCenterService")
public class UserCenterServicecImpl implements UserCenterService {
    @Autowired
    private UserCenterMapper userCenterMapper;
    /**
     * 游客查询订单（订单号不为空）
     * @return before/userCenter
     */
    @Override
    public String userCenter(Integer orderNum, String datatime1, String datatime2, Model model) {
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("orderNum",orderNum);
        map.put("datatime1",datatime1);
        map.put("datatime2",datatime2);
        model.addAttribute("myOrder",userCenterMapper.SelectOrder(map));
        return "before/userCenter.jsp";
    }
    /**
     * 用户查询订单（空）
     * @param id
     * @return
     */
    @Override
    public String userCenter1(HttpSession session, Integer orderNum, Integer id, String datatime1, String datatime2, Model model) {
        Map<String,Object> map = new HashMap<String,Object>();
        //map.put("id",id);
        map.put("id",id);
        map.put("orderNum",orderNum);
        map.put("datatime1",datatime1);
        map.put("datatime2",datatime2);
        model.addAttribute("myOrder",userCenterMapper.SelectOrdered1(map));
        return "before/userCenter.jsp";
    }

    /**
     * 订单号为空
     * @param session
     * @param datatime1
     * @param datatime2
     * @param model
     * @return
     */
    @Override
    public String userCenter2(HttpSession session, Integer id, String datatime1, String datatime2, Model model) {
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("id",id);
        map.put("datatime1",datatime1);
        map.put("datatime2",datatime2);
        model.addAttribute("myOrder",userCenterMapper.SelectOrdered(map));
        return "before/userCenter.jsp";
    }
    /**
     * 通过订单号查询，来实现订单详情
     * @param ordersn
     * @return
     */
    @Override
    public String userCenter3(Integer ordersn,Model model) {
        model.addAttribute("myOrderDetail",userCenterMapper.OrderDetail(ordersn));
        return "before/userOrderDetail.jsp";
    }

    @Override
    public String myOrder(Integer id,Model model) {
        model.addAttribute("myOrder",userCenterMapper.myOrder(id));
        return "before/userCenter.jsp";
    }


}
