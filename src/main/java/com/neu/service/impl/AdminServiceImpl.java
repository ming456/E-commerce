package com.neu.service.impl;

import com.neu.bean.Admin;
import com.neu.dao.AdminMapper;
import com.neu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    @Override
    public boolean addAdmin(Admin admin) {
        int count = adminMapper.insertAdmin(admin);
        if(count>0)
            return true;
        return false;
    }
}
