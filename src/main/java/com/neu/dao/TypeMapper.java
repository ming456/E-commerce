package com.neu.dao;

import com.neu.bean.Type;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TypeMapper {
    List<Type> findAllType();

    void delete(int id);

    List<Type> findAllType2(int id);

    void addTypeBath(@Param("typelist") List<Type> list);
}