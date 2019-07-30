package com.neu.dao;

import com.neu.bean.User;

import java.util.List;

public interface UserMapper {
    //添加用户
    int insertUser(User user);
    //修改用户
    int updateUser(User user);
    //删除用户
    int deleteUser(int id);
    //查询所有用户
    List<User> selectAllUser();
    //通过id查询用户(用在详情显示)
    User selectUserById(int id);
    //通过账号查用户
    User selectUserByNick(String nick);
    //通过账号模糊查询用户
    List<User> selectUserByNickP(String nick);
    //通过身份账号查用户
    User selectUserByCard(String card);
    //通过身份账号模糊查询用户
    List<User> selectUserByCardP(String card);
    //通过id查询收货地址
    User selectById(int id);
}