package com.neu.dao;

import com.alibaba.druid.util.MySqlUtils;
import com.neu.util.MyUtil;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Map;

public interface UserCenterMapper {
    /**
     * 游客通过订单号以及时间段来查询订单
     * @param  map
     * @return
     */
   public List<Map<String,Object>> SelectOrder(Map<String, Object> map);

    /**
     * 用户通过时间段来查询订单，订单号为空（自己的订单）
     * @param map
     * @return
     */
    public List<Map<String,Object>> SelectOrder1(Map<String, Object> map);

    /**
     * 用户通过时间段来查询订单，订单号不为空
     * @param map
     * @return
     */
    public List<Map<String,Object>> SelectOrder2(Map<String, Object> map);

    /**
     * 通过订单号查询，来实现订单详情
     * @param id
     * @return
     */
   public List<Map<String,Object>> OrderDetail(Integer id);

    /**
     * 通过用户ID来查询用户所有的订单
     * @param id,model
     * @return
     */
    public List<Map<String, Object>> myOrder(Integer bid);

}
