package com.neu.bean;

import java.util.Date;

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
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getTipsquestion() {
        return tipsquestion;
    }

    public void setTipsquestion(String tipsquestion) {
        this.tipsquestion = tipsquestion == null ? null : tipsquestion.trim();
    }

    public String getTipsanswer() {
        return tipsanswer;
    }

    public void setTipsanswer(String tipsanswer) {
        this.tipsanswer = tipsanswer == null ? null : tipsanswer.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card == null ? null : card.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
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
        this.sex = sex == null ? null : sex.trim();
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
}
