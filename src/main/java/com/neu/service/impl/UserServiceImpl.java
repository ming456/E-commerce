package com.neu.service.impl;

import com.neu.bean.Address;
import com.neu.bean.User;
import com.neu.dao.AddressMapper;
import com.neu.dao.UserMapper;
import com.neu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private AddressMapper addressMapper;
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

    @Override
    public boolean modifypassword(String username, String password) {
        int count = userMapper.updatePassword(username,password);
        if(count>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean modifyAddress(Integer id,String zipcode, String site,String phone,String receiver) {
        int count=addressMapper.updateAddressById(id,zipcode,site,phone,receiver);
        if(count>0){
            return  true;
        }
        return false;
    }

    @Override
    public boolean removeAddress(Integer id) {
        int count = addressMapper.deleteAddress(id);
        if(count>0){
            return true;
        }
        return false;
    }


    @Override
    public boolean addAddress(Address address) {
        int count=addressMapper.InsertAddress(address);
        if(count>0){
            return  true;
        }
        return false;
    }

    @Override
    public Address findAddressById(Integer id) {
        Address address=addressMapper.selectAddressById(id);
        if(address!=null){
            return  address;
        }
        return null;
    }


    @Override
    public boolean findUserByNick2(String nick) {
        int count = userMapper.selectUserByNick2(nick);
        if(count>0){
            return true;
        }
        return false;

    }
}
