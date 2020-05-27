package com.zjitc.service.imp;

import com.github.pagehelper.PageHelper;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.zjitc.dao.ProductDao;
import com.zjitc.model.Hope;
import com.zjitc.model.Product;
import com.zjitc.service.ProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;

@Service
public class ProductServiceImp implements ProductService {
  @Autowired
  private ProductDao dao;

  @Autowired
  Jedis jedis;

  @Override
  public List<Product> findProduct(String cid) {
    return dao.findProduct(cid);
  }

  @Override
  public List<Product> findByCid(String cid, Integer pageNum, Integer count) {
    PageHelper.startPage(pageNum, count);
    List<Product> products = dao.findByCid(cid);
    return products;
  }

  @Override
  public Product findProductList(Integer pid){
    Gson gson = new Gson();
    String product = jedis.get("product");
    List<Product> productList = gson.fromJson(product, new TypeToken<List<Product>>() {
    }.getType());
    for (Product p : productList) {
      if (pid.equals(p.getPid())) {
        return p;
      }
    }
    return null;
  }

  @Override
  public int add(Integer uid, Integer pid) {
    return dao.add(uid, pid);
  }

  @Override
  public List<Hope> findAll(Integer uid) {
    List<Hope> list = dao.findAll(uid);
    for (Hope c : list) {
      Product product = dao.findByPid(c.getPid());
      c.setProduct(product);
    }
    return list;
  }

  @Override
  public void delete(Integer pid) {
    dao.delete(pid);
  }

  @Override
  public void clear(Integer uid) {
    dao.clear(uid);
  }

  @Override
  public List<Product> findByCondition(String s) {
    return dao.findByCondition(s);
  }
}
