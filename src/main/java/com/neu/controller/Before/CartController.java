package com.neu.controller.Before;

import com.neu.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 购物车控制层
 */
@Controller
public class CartController {

    @Autowired
    private CartService cartService;
    /**
     * 添加购物车
     * @param model
     * @param shoppingnum
     * @param session
     * @return
     */
    @RequestMapping("/putCart.do")
    public String putCart(Model model, Integer goodsId, Integer shoppingnum, HttpSession session){

        return cartService.putCart(model,goodsId,shoppingnum,session);
    }

    /**
     * 查询购物车
     * @param model
     * @param session
     * @return
     */
    @RequestMapping("/selectCart.do")
    public String selectCart(Model model,HttpSession session){
     return cartService.selectCart(model,session);
    }

    /**
     * 删除购物车
     * @param session
     * @return
     */
    @RequestMapping("/deleteAgoods.do")
    public String deleteAgoods(Integer id,HttpSession session)
    {
        return cartService.deleteAgooda(id,session);
    }

    /**
     * 清空购物车
     * @param session
     * @return
     */
    @RequestMapping("/clear.do")
    public String clear(HttpSession session)
    {
        return cartService.clear(session);
    }

    @RequestMapping("/orderConfirm.do")
    public String orderConfirm(Model model, HttpSession session) {
        return cartService.orderConfirm(model, session);
    }
}
