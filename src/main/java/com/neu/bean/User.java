package com.neu.bean;

import java.util.Date;
import java.util.List;

public class User {
    private Integer id;

    private String username;

    private String password;

    private String tipsquestion;

    private String tipsanswer;

    private String realname;

    private String card;

    private String email;

    private Date birthday;

    private String sex;

    private Integer status;

    private Date createtime;

    private List<Address> addresses;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTipsquestion() {
        return tipsquestion;
    }

    public void setTipsquestion(String tipsquestion) {
        this.tipsquestion = tipsquestion;
    }

    public String getTipsanswer() {
        return tipsanswer;
    }

    public void setTipsanswer(String tipsanswer) {
        this.tipsanswer = tipsanswer;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", tipsquestion='" + tipsquestion + '\'' +
                ", tipsanswer='" + tipsanswer + '\'' +
                ", realname='" + realname + '\'' +
                ", card='" + card + '\'' +
                ", email='" + email + '\'' +
                ", birthday=" + birthday +
                ", sex='" + sex + '\'' +
                ", status=" + status +
                ", createtime=" + createtime +
                ", addresses=" + addresses +
                '}';
    }
}
