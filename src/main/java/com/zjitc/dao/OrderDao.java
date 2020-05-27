package com.zjitc.dao;


import com.zjitc.model.Orders;
import org.apache.ibatis.annotations.Param;

public interface OrderDao {
  void add(Orders orders);

  void payOrder(@Param("oid") String oid, @Param("name") String username, @Param("phone") String phone, @Param("addr") String addr);
}
