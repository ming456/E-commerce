package com.neu.service;

import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface OrderService {
    /**
     *
     * @param model
     * @param session
     * @param amount
     * @return
     */
    public String orderSubmit(Model model, HttpSession session, float amount);

    /**
     *
     * @param ordersn
     * @return
     */
    public String pay(Integer ordersn);
}
