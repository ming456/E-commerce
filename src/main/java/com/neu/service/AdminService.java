package com.neu.service;

import com.neu.bean.Admin;

import java.util.List;

public interface AdminService {
    //添加管理员
    boolean addAdmin(Admin admin);
    //删除管理员
    boolean removeAdmin(int id);
    //修改管理员权限
    boolean modifyAdminAccess(Admin admin);
    //查找所有管理员
    List<Admin> findAdminAll();
    //根据编号查找管理员
    Admin findAdminById(int id);
    //根据名字模糊查询查找管理员
    List<Admin> findAdminLikeName(String superName);
    //根据名字查询查找管理员
    Admin findAdminByName(String superName);
    //什么管理员
    int whatAdmin(String superName);
    //name，psw找找管理员
    Admin findAdmin(String supername, String password);
}
