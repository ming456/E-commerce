package com.neu.service.impl;

import com.neu.bean.Orders;
import com.neu.bean.User;
import com.neu.dao.OrdersMapper;
import com.neu.dao.UserMapper;
import com.neu.service.AdminOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AdminOrderServiceImpl implements AdminOrderService {
    @Autowired
    OrdersMapper ordersMapper;
    @Autowired
    UserMapper userMapper;
    @Override
    public List<Orders> findAll() {
        return ordersMapper.findAll();
    }

    @Override
    public List<Orders> findAll2(int id) {
        return ordersMapper.findOrderDetailList(id);
    }

    @Override
    public User findUser(int id) {
        return userMapper.selectById(id);
    }

    @Override
    public Orders orderdetailgoods(int id) {

        return ordersMapper.orderdetailgoods(id);
    }

    @Override
    public void delete(int id) {
        ordersMapper.remove(id);
    }
}
