package com.zjitc.Redis;

import com.google.gson.Gson;
import com.zjitc.dao.ProductDao;
import com.zjitc.model.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class NoSql {
  /**
   * 缓存
   *
   * @param redis
   * @param productDao
   */
  @Autowired
  public NoSql(Redis redis, ProductDao productDao) {
    Gson gson = new Gson();
    List<Product> product = productDao.findProductList();
    String productList = gson.toJson(product);
    redis.set("product", productList);
  }
}
