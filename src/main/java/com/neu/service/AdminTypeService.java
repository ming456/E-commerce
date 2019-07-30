package com.neu.service;

import com.neu.bean.Type;

import java.util.List;

public interface AdminTypeService {
    List<Type> findAllType();

    void delete(int id);

    List<Type> findAllType2();

    void add(List<Type> list);
}
