package com.neu.dao;

import com.neu.bean.Orders;

import java.util.List;

public interface OrdersMapper {
    List<Orders> findAll();
    List<Orders> findOrderDetailList(int id);
    Orders orderdetailgoods(int id);

    void remove(int id);
}
