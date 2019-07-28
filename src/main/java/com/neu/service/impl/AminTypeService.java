package com.neu.service.impl;

import com.neu.bean.Type;
import com.neu.dao.TypeMapper;
import com.neu.service.AdminTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AminTypeService implements AdminTypeService {
    @Autowired
    TypeMapper typeMapper;
    @Override
    public List<Type> findAllType() {
        System.out.println("进入service.....");
        List<Type> list=typeMapper.findAllType();
        System.out.println(list);
        return list;
    }

    @Override
    public void delete(int id) {
        typeMapper.delete(id);
    }

    @Override
    public List<Type> findAllType2() {
        return typeMapper.findAllType2(1);
    }

    @Override
    public void add(List<Type> list) {
        typeMapper.addTypeBath(list);
    }

}
