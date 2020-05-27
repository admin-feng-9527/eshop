package com.zjitc.service;

import com.zjitc.model.*;
import java.util.List;

public interface AdminUserService {
  AdminUser login(String username, String password);

  List<User> findAllUser();

  void delete(Integer uid);

  List<Orders> findOrders(Integer pageNum, Integer count);

  List<Product> findAllProduct(Integer pageNum, Integer count);

  Product editor(Integer pid);

  void productEdit(Integer pid, String pname, Double price, String pdesc, Integer cid);

  void deleteProduct(Integer pid);

  List<Category> findAllCategory();

  void deleteCategory(Integer cid);

  void addCategory(String cname);

  void addProduct(Product product);
}
