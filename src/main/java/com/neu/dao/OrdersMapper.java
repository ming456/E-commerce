package com.neu.dao;

import com.neu.bean.Orders;

import java.util.List;
import java.util.Map;

public interface OrdersMapper {
    List<Orders> findAll();
    List<Orders> findOrderDetailList(int id);
    Orders orderdetailgoods(int id);

    void remove(int id);

    public int addOrder(Orders order);
    public int addOrderDetail(Map<String, Object> map);

    public List<Map<String, Object>> selectGoodsShop(Integer uid);

    public int updateStore(Map<String, Object> map);

    public int clear(Integer uid);

    public int pay(Integer ordersn);
}
