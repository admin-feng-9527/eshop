package com.zjitc.dao;


import com.zjitc.model.Hope;
import com.zjitc.model.Product;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProductDao {
  List<Product> findProduct(@Param("cid") String cid);

  List<Product> findByCid(@Param("cid") String cid);

  List<Product> findProductList();

  Product findByPid(Integer pid);

  int add(@Param("uid") Integer uid, @Param("pid") Integer pid);

  List<Hope> findAll(@Param("uid") Integer uid);

  void delete(Integer pid);

  void clear(Integer uid);

  List<Product> findByCondition(String s);
}
