package com.neu.service.impl;

import com.neu.bean.Data.GoodsData;
import com.neu.bean.Data.OrdersData;
import com.neu.bean.Data.UserData;
import com.neu.dao.DataAnalysisMapper;
import com.neu.service.DataAnalysisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataAnalysisServiceImpl implements DataAnalysisService {
    @Autowired
    DataAnalysisMapper dataAnalysisMapper;

    @Override
    public List<UserData> getUserData() {
        List<UserData> userDatas= dataAnalysisMapper.selectUserData();
        return userDatas;
    }

    @Override
    public List<GoodsData> getGoodsData() {
        List<GoodsData> goodsData = dataAnalysisMapper.selectGoodsData();
        return goodsData;
    }

    @Override
    public List<OrdersData> getOrdersData() {
        List<OrdersData> ordersDatas = dataAnalysisMapper.selectOrdersData();
        return ordersDatas;
    }
}
