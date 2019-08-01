package com.neu.service.impl;

import com.neu.bean.Orders;
import com.neu.dao.OrdersMapper;
import com.neu.service.OrderService;
import com.neu.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrdersMapper orderMapper;
    @Override
    public String orderSubmit(Model model, HttpSession session, float amount) {
        Orders order = new Orders();
        //order.setUserid(MyUtil.getUserId(session));
        order.setUserid(1);
        order.setTotalpay(amount);
        order.setOrdernum(Integer.parseInt(String.valueOf(MyUtil.getRandoms())));
        //生成订单，并将主键返回order
        orderMapper.addOrder(order);
        //生成订单详情
        Map<String,Object> map = new HashMap<String,Object>();
        //map.put("uid", MyUtil.getUserId(session));
        map.put("uid",1);
        map.put("ordersn", order.getId());
        orderMapper.addOrderDetail(map);
        //更新商品库存
        //更新商品库存1.查询商品购买量，以便更新库存使用
        //List<Map<String, Object>> list = orderMapper.selectGoodsShop(MyUtil.getUserId(session));
        List<Map<String, Object>> list = orderMapper.selectGoodsShop(1);//测试
        //更新商品库存2.根据商品购买量更新库存
        for (Map<String, Object> map2 : list) {
            orderMapper.updateStore(map2);
        }
        //清空购物车
        //orderMapper.clear(MyUtil.getUserId(session));
        orderMapper.clear(1);//测试
        model.addAttribute("ordersn", order.getId());
        model.addAttribute("ordernum",order.getOrdernum());
        return "before/orderdone.jsp";
    }

    @Override
    public String pay(Integer ordersn) {
       orderMapper.pay(ordersn);
       return "before/paydone.jsp";
    }
}
