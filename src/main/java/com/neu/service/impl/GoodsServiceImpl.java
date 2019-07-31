package com.neu.service.impl;

import com.neu.bean.Goods;
import com.neu.bean.GoodsExtend;
import com.neu.dao.GoodsMapper;
import com.neu.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
    @Autowired
   private GoodsMapper goodsMapper;

    @Override
    public List<Goods> findGoodsbyvague(String vague){
        List<Goods> goods=goodsMapper.selectGoodsbyvague(vague);
        if(goods!=null){
             return goods;
        }
        return null;
    }

    @Override
    public Goods findGoodsById(Integer id) {
        Goods good=goodsMapper.selectGoodsById(id);
        if(good!=null){
            return  good;
        }
        return null;
    }

    @Override
    public List<GoodsExtend> findGoodsSum() {
        List<GoodsExtend> goods=goodsMapper.selectGoodsSum();
        if(goods!=null){
            return goods;
        }
        return null;
    }

    @Override
    public List<GoodsExtend> findGoodsCount() {
        List<GoodsExtend> goods=goodsMapper.selectGoodsCount();
        if(goods!=null){
            return goods;
        }
        return null;
    }

    @Override
    public List<Goods> findGoodsAll() {
        List<Goods> goods=goodsMapper.selectGoodsAll();
        if(goods!=null){
            return goods;
        }
        return null;
    }
}
