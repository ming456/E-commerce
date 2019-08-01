package com.neu.dao;

import com.neu.bean.Data.GoodsData;
import com.neu.bean.Data.OrdersData;
import com.neu.bean.Data.UserData;

import java.util.List;

public interface DataAnalysisMapper {
    List<UserData> selectUserData();

    List<GoodsData> selectGoodsData();

    List<OrdersData> selectOrdersData();

}
