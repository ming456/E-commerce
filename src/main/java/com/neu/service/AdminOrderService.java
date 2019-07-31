package com.neu.service;

import com.neu.bean.Orders;
import com.neu.bean.User;

import java.util.List;

public interface AdminOrderService {
    List<Orders> findAll();

    List<Orders> findAll2(int id);

    User findUser(int id);

    Orders orderdetailgoods(int id);

    void delete(int id);
}
