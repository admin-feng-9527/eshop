package com.zjitc.service;

import com.zjitc.model.Hope;
import com.zjitc.model.Product;
import java.util.List;

public interface ProductService {

  List<Product> findProduct(String cid);

  List<Product> findByCid(String cid, Integer pageNum, Integer count);

  Product findProductList(Integer pid);

  int add(Integer uid, Integer pid);

  List<Hope> findAll(Integer uid);

  void delete(Integer pid);

  void clear(Integer uid);

  List<Product> findByCondition(String s);
}
