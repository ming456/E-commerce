package com.neu.bean.Data;

public class GoodsData {
    private int sumGoods;
    private String goodsname;

    public int getSumGoods() {
        return sumGoods;
    }

    public void setSumGoods(int sumGoods) {
        this.sumGoods = sumGoods;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    @Override
    public String toString() {
        return "GoodsData{" +
                "sumGoods=" + sumGoods +
                ", goodsname='" + goodsname + '\'' +
                '}';
    }
}
