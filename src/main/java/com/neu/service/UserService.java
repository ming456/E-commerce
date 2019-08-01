package com.neu.service;

import com.neu.bean.Address;
import com.neu.bean.User;

import java.util.List;

public interface UserService {
    //添加用户
    boolean addUser(User user);
    //修改用户
    boolean modifyUser(User user);
    //删除用户
    boolean removeUser(int id);
    boolean findUserByNick2(String nick);
    //查询所有用户
    List<User> findAllUser();
    //通过id查询用户（详情显示）
    User findUserById(int id);
    //通过账号查用户
    User findUserByNick(String nick);
    //通过账号模糊查询用户
    List<User> findUserByNickP(String nick);
    //通过身份账号模糊查询用户
    List<User> findUserByCardP(String card);

    //修改密码
    boolean modifypassword(String username, String password);

    //通过地址id删除地址
    boolean removeAddress(Integer id);
    boolean modifyAddress(Integer id, String zipcode, String site, String phone, String receiver);
    boolean addAddress(Address address);
    Address findAddressById(Integer id);
}
