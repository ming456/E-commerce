package com.neu.controller.Before;

import javax.servlet.http.HttpSession;

import com.neu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class OrderController{
	@Autowired
	private OrderService orderService;
	/**
	 * 提交订单
	 */
	@RequestMapping("/orderSubmit.do")
	public String orderSubmit(Model model, HttpSession session,float amount) {
		return orderService.orderSubmit(model, session, amount);
	}
	/**
	 * ֧支付订单
	 */
	@RequestMapping("/pay.do")
	public String pay(Integer ordersn) {
		return orderService.pay(ordersn);
	}
}
