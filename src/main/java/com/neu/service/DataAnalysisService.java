package com.neu.service;

import com.neu.bean.Data.GoodsData;
import com.neu.bean.Data.OrdersData;
import com.neu.bean.Data.UserData;

import java.util.List;

public interface DataAnalysisService {
    List<UserData> getUserData();

    List<GoodsData> getGoodsData();

    List<OrdersData> getOrdersData();
}
