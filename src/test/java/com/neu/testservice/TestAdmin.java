package com.neu.testservice;

import com.neu.bean.Admin;
import com.neu.service.AdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class TestAdmin {

    @Autowired
    private AdminService adminService;

    /**
     * 测试AdminMapper
     */

    @Test
    public void testAddAdmin() {
        Admin admin = new Admin();
        admin.setSupername("我是");
        admin.setPassword("123");
        admin.setAccess(2);

        boolean test = adminService.addAdmin(admin);
        System.out.println(test);
    }
    @Test
    public void testRemoveAdmin(){
        int id = 14;
        boolean test = adminService.removeAdmin(id);
        System.out.println(test);
    }
    @Test
    public void testModifyAdminAccess(){
        Admin admin = new Admin();
        admin.setId(4);
        admin.setAccess(2);
        boolean test = adminService.modifyAdminAccess(admin);
        System.out.println(test);
    }
    @Test
    public void testFindAdminAll() {
        List<Admin> admins = adminService.findAdminAll();
        for (Admin admin : admins) {
            System.out.println(admin);
        }
    }
    @Test
    public void testFindAdminById(){
        Admin admin = adminService.findAdminById(2);
        System.out.println(admin);
    }
    @Test
    public void testFindAdminByName(){
        List<Admin> admins = adminService.findAdminLikeName("a");
        for (Admin admin : admins) {
            System.out.println(admin);
        }
    }

}
