package com.zjitc.service.imp;

import com.zjitc.dao.CartDao;
import com.zjitc.dao.OrderDao;
import com.zjitc.model.Orders;
import com.zjitc.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImp  implements OrderService {

  @Autowired
  public OrderDao orderDao;

  @Autowired
  public CartDao cartDao;

  @Override
  public void add(Orders orders) {
    orderDao.add(orders);
    cartDao.cancle();
  }

  @Override
  public void payOrder(String oid, String username, String phone, String addr){
    orderDao.payOrder(oid, username, phone, addr);
  }
}
