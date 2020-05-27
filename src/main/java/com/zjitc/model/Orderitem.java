package com.zjitc.model;


public class Orderitem {
  private Integer itemid;//订单详情ID
  private Integer count;//商品数量
  private Double price;//商品价钱
  private Product product;//商品类
  private Orders orders;//订单类

  //构造方法
  public Orderitem() {
  }
  public Orderitem(Integer itemid, Integer count, Double price, Product product,Orders orders) {
    this.itemid = itemid;
    this.count = count;
    this.price = price;
    this.product = product;
    this.orders = orders;
  }
  //订单详情ID get/set
  public Integer getItemid() {
    return itemid;
  }
  public void setItemid(Integer itemid) {
    this.itemid = itemid;
  }
  //商品数量 get/set
  public Integer getCount() {
    return count;
  }
  public void setCount(Integer count) {
    this.count = count;
  }
  //商品价钱 get/set
  public Double getPrice() {
    return price;
  }
  public void setPrice(Double price) {
    this.price = price;
  }
  //商品类 get/set
  public Product getProduct() {
    return product;
  }
  public void setProduct(Product product) {
    this.product = product;
  }
  //订单类 get/set
  public Orders getOrders() {
    return orders;
  }
  public void setOrders(Orders orders) {
    this.orders = orders;
  }
  //toString
  @Override
  public String toString() {
    return "Orderitem{" +
            "itemid=" + itemid +
            ", count=" + count +
            ", price=" + price +
            ", product=" + product +
            ", orders=" + orders +
            '}';
  }
}
