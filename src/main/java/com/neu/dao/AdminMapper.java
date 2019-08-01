package com.neu.dao;

import com.neu.bean.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {

   //添加管理员
   int insertAdmin(Admin admin);
   //删除管理员
   int deleteAdmin(int id);
   //修改管理员权限
   int updateAdminAccess(Admin admin);
   //查找所有管理员
   List<Admin> selectAdminAll();
   //根据编号查找管理员
   Admin selectAdminById(int id);
   //根据名字模糊查询查找管理员
   Admin selectAdminByName(String superName);
   //根据名字模糊查询查找管理员
   List<Admin> selectAdminLikeName(String superName);

   Admin selectAdmin(@Param("supername") String supername, @Param("password") String password);

   Admin findAdmin(@Param("username") String username, @Param("password") String password);
}