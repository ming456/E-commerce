package com.neu.service.impl;

import com.neu.bean.User;
import com.neu.dao.UserMapper;
import com.neu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public boolean addUser(User user) {
        int count = userMapper.insertUser(user);
        if(count>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean modifyUser(User user) {
        int count = userMapper.updateUser(user);
        if(count>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean removeUser(int id) {
        int count = userMapper.deleteUser(id);
        if(count>0){
            return true;
        }
        return false;
    }

    @Override
    public List<User> findAllUser() {
        List<User> users = userMapper.selectAllUser();
        return users;
    }

    @Override
    public User findUserById(int id) {
        User user= userMapper.selectUserById(id);
        return user;
    }

    @Override
    public User findUserByNick(String nick) {
        User user= userMapper.selectUserByNick(nick);
        return user;
    }

    @Override
    public List<User> findUserByNickP(String nick) {
        List<User> users= userMapper.selectUserByNickP(nick);
        return users;
    }

    @Override
    public List<User> findUserByCardP(String card) {
        List<User> users= userMapper.selectUserByCardP(card);
        return users;
    }
}
