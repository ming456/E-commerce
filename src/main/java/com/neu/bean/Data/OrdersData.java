package com.neu.bean.Data;

public class OrdersData {
    int orderStatus;
    int num;

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "OrdersData{" +
                "orderStatus=" + orderStatus +
                ", num=" + num +
                '}';
    }
}
