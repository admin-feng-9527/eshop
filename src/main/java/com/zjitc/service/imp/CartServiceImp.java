package com.zjitc.service.imp;

import com.zjitc.dao.CartDao;
import com.zjitc.dao.ProductDao;
import com.zjitc.dao.UserDao;
import com.zjitc.model.CartItem;
import com.zjitc.model.Product;
import com.zjitc.model.User;
import com.zjitc.service.CartService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImp implements CartService {

  @Autowired
  public CartDao dao;

  @Autowired
  public UserDao userDao;

  @Autowired
  public ProductDao productDao;

  @Override
  public void addcart(Integer uid, Integer pid, Integer count) {
    dao.addcart(uid, pid, count);
  }

  @Override
  public List<CartItem> findAll(Integer uid) {
    List<CartItem> cartItems = dao.findAll(uid);
    for (CartItem c : cartItems) {
      Product product = productDao.findByPid(c.getPid());
      c.setProduct(product);
    }
    return cartItems;
  }

  @Override
  public void delete(Integer pid) {
    dao.delete(pid);
  }

  @Override
  public void clearCart(Integer uid) {
    dao.clearCart(uid);
  }

  @Override
  public void update(Integer pid, Integer num) {
    dao.update(pid, num);
  }

  @Override
  public List<CartItem> findByUid(Integer uid) {
    List<CartItem> list = dao.findByUid(uid);
    for (CartItem c : list) {
      Product product = dao.findByPid(c.getPid());
      User user = userDao.findByUid(c.getUid());
      c.setProduct(product);
      c.setUser(user);
    }
    return list;
  }
}
