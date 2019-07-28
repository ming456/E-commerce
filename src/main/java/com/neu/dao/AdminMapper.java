package com.neu.dao;

import com.neu.bean.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
   int insertAdmin(Admin admin);

    Admin findAdmin(@Param("username") String username, @Param("password") String password);
}