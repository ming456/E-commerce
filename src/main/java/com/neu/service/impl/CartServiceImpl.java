package com.neu.service.impl;

import com.neu.dao.CartMapper;
import com.neu.service.CartService;
import com.neu.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("cartService")
public class CartServiceImpl implements CartService {
    @Autowired
    private CartMapper cartMapper;
    /**
     * 添加商品到购物车
     * @param model
     * @param shoppingnum,goodsId
     * @param session
     * @return
     */
    @Override
    public String putCart(Model model,Integer goodsId,Integer shoppingnum,HttpSession session) {
        Map<String,Object> map = new HashMap<String,Object>();
        //map.put("uid", MyUtil.getUserId(session));
        map.put("uid",1);
        map.put("goodsId",goodsId);
        map.put("shoppingnum",shoppingnum);
        //是否添加了购物车
        List<Map<String,Object>> list = cartMapper.isPutCart(map);
        if(list.size()>0)
            cartMapper.updateCart(map);
        else
            cartMapper.putCart(map);
        return "forward:selectCart.do";
    }

    @Override
    public String selectCart(Model model, HttpSession session) {
        //MyUtil.getUserId(session
        List<Map<String,Object>> list = cartMapper.selectCart(1);
        double sum = 0;
        for(Map<String,Object> map:list){
            sum=sum+(double)map.get("smallsum");
        }
        model.addAttribute("total",sum);
        model.addAttribute("cartlist",list);
        return "before/cart.jsp";
    }

    @Override
    public String deleteAgooda(Integer id, HttpSession session)
    {
        Map<String,Object> map = new HashMap<String,Object>();
        //map.put("uid",MyUtil.getUserId(session)) ;
        map.put("uid",1);
        map.put("gid",id);
        cartMapper.deleteAgoods(map);
        return "forward:selectCart.do";
    }

    @Override
    public String clear(HttpSession session) {
        //cartMapper.clear(MyUtil.getUserId(session));
        cartMapper.clear(1);
        return "forward:selectCart.do";
    }

    @Override
    public String orderConfirm(Model model, HttpSession session) {
        List<Map<String,Object>> list = cartMapper.selectCart(1);
        double sum = 0;
        for(Map<String,Object> map:list){
            sum=sum+(double)map.get("smallsum");
        }
        model.addAttribute("total",sum);
        model.addAttribute("cartlist",list);
        return "before/orderconfirm.jsp";
    }
}
