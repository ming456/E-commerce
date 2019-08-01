package com.neu.dao;


import com.neu.bean.Address;
import org.apache.ibatis.annotations.Param;

public interface AddressMapper {
    int deleteAddress(Integer id);
    Address selectAddressById(Integer id);
    int updateAddressById(@Param("id") Integer id, @Param("zipCode") String zipCode, @Param("site") String site, @Param("phone") String phone, @Param("receiver") String receiver);
    int InsertAddress(Address address);
}