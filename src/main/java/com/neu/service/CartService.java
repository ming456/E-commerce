package com.neu.service;

import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface CartService {

    public String putCart(Model model, Integer goodsId, Integer shoppingnum, HttpSession session);

    public String selectCart(Model model, HttpSession session);

    public String deleteAgooda(Integer id, HttpSession session);

    public String clear(HttpSession session);

    public String orderConfirm(Model model, HttpSession session);
}
