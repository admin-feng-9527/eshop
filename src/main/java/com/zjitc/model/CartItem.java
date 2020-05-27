package com.zjitc.model;

import org.springframework.beans.factory.annotation.Autowired;


public class CartItem {
  public Integer uid;//用户ID
  public Integer pid;//商品ID
  public Integer count;//商品数量
  public Product product;//商品类
  public User user;//用户类

  //构造方法
  public CartItem() {
  }
  public CartItem(Integer uid, Integer pid, Integer count, Product product, User user) {
    this.uid = uid;
    this.pid = pid;
    this.count = count;
    this.product = product;
    this.user = user;
  }
  //Product类 get/set
  public Product getProduct() {
    return product;
  }
  public void setProduct(Product product) {
    this.product = product;
  }
  //User类 get/set
  public User getUser() {
    return user;
  }
  public void setUser(User user) {
    this.user = user;
  }
  //用户ID get/set
  public Integer getUid() {
    return uid;
  }
  public void setUid(Integer uid) {
    this.uid = uid;
  }
  //商品ID get/set
  public Integer getPid() {
    return pid;
  }
  public void setPid(Integer pid) {
    this.pid = pid;
  }
  //商品数量 get/set
  public Integer getCount() {
    return count;
  }
  public void setCount(Integer count) {
    this.count = count;
  }
  //toString
  @Override
  public String toString() {
    return "CartItem{" +
            "uid=" + uid +
            ", pid=" + pid +
            ", count=" + count +
            ", product=" + product +
            ", user=" + user +
            '}';
  }
}
