package com.neu.dao;

import java.util.List;
import java.util.Map;

public interface CartMapper {

     List<Map<String,Object>> isPutCart(Map<String, Object> map);
     void putCart(Map<String, Object> map);
     void updateCart(Map<String, Object> map);
     void deleteAgoods(Map<String, Object> map);
     List<Map<String,Object>> selectCart(Integer id);
     void clear(Integer id);
}
