package com.neu.service;

import com.neu.bean.Goods;
import com.neu.bean.GoodsExtend;

import java.util.List;

public interface GoodsService {
    List<Goods> findGoodsbyvague(String vague);
    Goods findGoodsById(Integer id);
    List<GoodsExtend> findGoodsSum();
    List<GoodsExtend> findGoodsCount();
    List<Goods> findGoodsAll();

}
