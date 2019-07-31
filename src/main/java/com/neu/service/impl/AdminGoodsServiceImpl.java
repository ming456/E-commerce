package com.neu.service.impl;

import com.neu.bean.Goods;
import com.neu.dao.GoodsMapper;
import com.neu.service.AdminGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminGoodsServiceImpl implements AdminGoodsService {
    @Autowired
    GoodsMapper goodsMapper;

    public List<Goods> findAllGoods() {
        List<Goods> list = goodsMapper.findAllGoods();
//        System.out.println(list);
        return list;
    }

    @Override
    public boolean addGoods(Goods goods) {
        int count = goodsMapper.addGoods(goods);
        if (count > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delGoods(int id) {
        goodsMapper.delGoods(id);
        return true;
    }

    @Override
    public Goods findGoodsById(int id) {
        return goodsMapper.findGoodsById(id);
    }

    @Override
    public boolean updateGoods(Goods goods) {
        goodsMapper.updateGoods(goods);
        return true;
    }
}
