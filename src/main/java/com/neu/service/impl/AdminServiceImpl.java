package com.neu.service.impl;

import com.neu.bean.Admin;
import com.neu.dao.AdminMapper;
import com.neu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    //添加管理员
    @Override
    public boolean addAdmin(Admin admin) {
        int count = adminMapper.insertAdmin(admin);
        if(count>0){
            return true;
        }
        return false;
    }
    //删除管理员
    @Override
    public boolean removeAdmin(int id){
        int count = adminMapper.deleteAdmin(id);
        if(count>0)
            return true;
        return false;
    }
    //修改管理员权限
    @Override
    public boolean modifyAdminAccess(Admin admin){
        int count = adminMapper.updateAdminAccess(admin);
        if(count>0)
            return true;
        return false;
    }
    //查找所有管理员
    @Override
    public List<Admin> findAdminAll(){
        List<Admin> admins = adminMapper.selectAdminAll();
        return admins;
    }
    //根据编号查找管理员
    public Admin findAdminById(int id){
        Admin admin = adminMapper.selectAdminById(id);
        return admin;
    }

    @Override
    public List<Admin> findAdminLikeName(String superName) {
        List<Admin> admins = adminMapper.selectAdminLikeName(superName);
        return admins;
    }

    //根据名字模糊查询查找管理员
    public Admin findAdminByName(String superName){
        Admin admin = adminMapper.selectAdminByName(superName);
        return admin;
    }

    @Override
    public int whatAdmin(String superName) {
        Admin admin = findAdminByName(superName);
        int access = admin.getAccess();
        return access;
    }

    @Override
    public Admin findAdmin(String supername, String password) {
        Admin admin = adminMapper.selectAdmin(supername,password);
        return admin;
    }

}
