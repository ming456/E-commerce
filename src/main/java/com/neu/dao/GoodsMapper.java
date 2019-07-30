package com.neu.dao;


import com.neu.bean.Goods;
import com.neu.bean.GoodsExtend;
import org.apache.ibatis.type.LocalDateTimeTypeHandler;

import java.util.List;

public interface GoodsMapper {
    List<Goods> selectGoodsbyvague(String vague);

    Goods selectGoodsById(Integer id);

    List<GoodsExtend> selectGoodsSum();

    List<GoodsExtend> selectGoodsCount();

    List<Goods> selectGoodsAll();

    List<Goods> findAllGoods();

    int addGoods(Goods goods);

    int delGoods(int id);

    Goods findGoodsById(int id);

    int updateGoods(Goods goods);
}