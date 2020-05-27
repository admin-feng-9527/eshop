package com.zjitc.service;

import com.zjitc.model.Orders;

public interface OrderService {
  void add(Orders orders);

  void payOrder(String oid, String username, String phone, String addr);
}
