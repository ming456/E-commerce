package com.neu.bean;

import java.util.List;

public class Orders {
    private int id;
    private int userid;
    private int ordernum;
    private int orderstatus;
    private String createtime;
    private float totalpay;
    private User user;
    private List<Orderdetail> orderdetails;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Orderdetail> getOrderdetails() {
        return orderdetails;
    }

    public void setOrderdetails(List<Orderdetail> orderdetails) {
        this.orderdetails = orderdetails;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(int ordernum) {
        this.ordernum = ordernum;
    }

    public int getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(int orderstatus) {
        this.orderstatus = orderstatus;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public float getTotalpay() {
        return totalpay;
    }

    public void setTotalpay(float totalpay) {
        this.totalpay = totalpay;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", userid=" + userid +
                ", ordernum=" + ordernum +
                ", orderstatus=" + orderstatus +
                ", createtime='" + createtime + '\'' +
                ", totalpay=" + totalpay +
                ", user=" + user +
                ", orderdetails=" + orderdetails +
                '}';
    }
}
