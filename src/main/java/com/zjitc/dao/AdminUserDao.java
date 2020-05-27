package com.zjitc.dao;

import com.zjitc.model.*;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface AdminUserDao {
  AdminUser login(@Param("username") String username, @Param("password") String password);

  List<User> findAll();

  void delete(Integer uid);

  List<Orders> findOrders();

  List<Product> findAllProduct();

  Product editor(Integer pid);

  void productEdit(@Param("pid") Integer pid, @Param("pname") String pname,@Param("price") Double price, @Param("pdesc") String pdesc, @Param("cid") Integer cid);

  void deleteProduct(Integer pid);

  List<Category> findAllCategory();

  void deleteCategory(Integer cid);

  void addCategory(String cname);

  void addProduct(Product product);
}
