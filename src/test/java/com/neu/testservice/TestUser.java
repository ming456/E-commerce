package com.neu.testservice;

import com.neu.bean.User;
import com.neu.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class TestUser {
    @Autowired
    private UserService userService;
    /**
     * 测试UserMapper
     */
    @Test
    public void testAddUser() {
        User user = new User();
        user.setUsername("testq");
        user.setPassword("1234");
        user.setTipsquestion("setTipsquestion");
        user.setTipsanswer("setTipsanswer");
        user.setRealname("啵啵啵");
        user.setCard("33748563828748372");
        user.setEmail("123@123.com");
        user.setBirthday(new Date());
        user.setSex("女");
        user.setCreatetime(new Date());
        userService.addUser(user);
    }
    @Test
    public void testRemoveUser(){
        int id = 15;
        userService.removeUser(id);
    }
    @Test
    public void testModifyUser(){
        User user = new User();
        user.setId(16);
        user.setUsername("testqlllll");
        //user.setPassword("1234");
        user.setTipsquestion("setTipsquestion");
        user.setTipsanswer("setTipsanswer");
        user.setRealname("啵啵啵");
        user.setCard("33748563828748372");
        user.setEmail("123@123.com");
        user.setBirthday(new Date());
        user.setSex("女");
        user.setCreatetime(new Date());
        userService.modifyUser(user);
    }
    @Test
    public void testFindAllUser(){
        List<User> users = userService.findAllUser();
        for (User user:users) {
            System.out.println(user);
        }
    }
    @Test
    public void testFindUserById(){
        User user = userService.findUserById(1);
        System.out.println(user);
    }
    @Test
    public void testFindUserByNick(){
        User user = userService.findUserByNick("test");
        System.out.println(user);
    }
    @Test
    public void testFindUserByNickP(){
        List<User> users = userService.findUserByNickP("a");
        for (User user:users) {
            System.out.println(user);
        }
    }
    @Test
    public void testFindUserByCardP(){
        List<User> users = userService.findUserByCardP("440");
        for (User user:users) {
            System.out.println(user);
        }
    }
}
