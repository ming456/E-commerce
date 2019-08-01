package com.neu.service;

import com.neu.util.MyUtil;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface UserCenterService {
    /**
     * 订单查询（游客)
     * @return
     */
    public String userCenter(Integer id, MyUtil myUtil, Model model);

    /**
     * 订单查询（用户),订单号不为空
     * @param id
     * @param myUtil
     * @return
     */
    public String userCenter1(Integer id, MyUtil myUtil, Model model);

    /**
     * 订单查询（用户），订单号为空
     * @param myUtil
     * @return
     */
    public String userCenter2(HttpSession session, MyUtil myUtil, Model model);

    /**
     * 订单详情
     * @param id
     * @return
     */
    public String userCenter3(Integer id, Model model);

    /**
     * 通过用户ID来查询用户所有的订单
     * @param id
     * @return
     */
    public String myOrder(Integer ordersn, Model model);
}
