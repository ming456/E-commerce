package com.neu.bean;

public class Admin {
    private Integer id;

    private String supername;

    private String password;

    private Integer access;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSupername() {
        return supername;
    }

    public void setSupername(String supername) {
        this.supername = supername == null ? null : supername.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getAccess() {
        return access;
    }

    public void setAccess(Integer access) {
        this.access = access;
    }
}
