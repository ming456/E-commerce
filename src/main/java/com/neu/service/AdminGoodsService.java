package com.neu.service;

import com.neu.bean.Goods;

import java.util.List;

public interface AdminGoodsService {
    List<Goods> findAllGoods();

    boolean addGoods(Goods goods);

    boolean delGoods(int id);

    Goods findGoodsById(int id);

    boolean updateGoods(Goods goods);
}
