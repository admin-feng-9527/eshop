package com.zjitc.dao;

import com.zjitc.model.CartItem;
import com.zjitc.model.Product;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CartDao {
  List<CartItem> findAll(@Param("uid") Integer uid);

  void delete(Integer pid);

  void clearCart(Integer uid);

  void addcart(@Param("uid") Integer uid, @Param("pid") Integer pid, @Param("count") Integer count);

  void update(@Param("pid") Integer pid, @Param("count") Integer num);

  List<CartItem> findByUid(Integer uid);

  Product findByPid(Integer pid);

  void cancle();
}
