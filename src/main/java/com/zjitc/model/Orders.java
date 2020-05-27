package com.zjitc.model;

import java.util.List;


public class Orders {
  private String oid;//订单编号
  private Double total;//总价钱
  private String ordertime;//下单时间
  //收货人信息（下单人和收货人可能不是同一个）
  private String name;
  private String phone;
  private String addr;
  //谁下单
  private Integer uid;
  //订单与订单子项 一对多
  private List<Orderitem> orderitemList;
  private User user;
  //构造方法
  public Orders() {
  }
  public Orders(String oid, Double total, String ordertime, String name, String phone, String addr, Integer uid, List<Orderitem> orderitemList, User user) {
    this.oid = oid;
    this.total = total;
    this.ordertime = ordertime;
    this.name = name;
    this.phone = phone;
    this.addr = addr;
    this.uid = uid;
    this.orderitemList = orderitemList;
    this.user = user;
  }
  //订单编号 get/set
  public String getOid() {
    return oid;
  }
  public void setOid(String oid) {
    this.oid = oid;
  }
  //总价钱 get/set
  public Double getTotal() {
    return total;
  }
  public void setTotal(Double total) {
    this.total = total;
  }
  //下单时间 get/set
  public String getOrdertime() {
    return ordertime;
  }
  public void setOrdertime(String ordertime) {
    this.ordertime = ordertime;
  }
  //姓名  get/set
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  //电话  get/set
  public String getPhone() {
    return phone;
  }
  public void setPhone(String phone) {
    this.phone = phone;
  }
  //地址  get/set
  public String getAddr() {
    return addr;
  }
  public void setAddr(String addr) {
    this.addr = addr;
  }
  //用户ID get/set
  public Integer getUid() {
    return uid;
  }
  public void setUid(Integer uid) {
    this.uid = uid;
  }
  //订单详情 get/set
  public List<Orderitem> getOrderitemList() {
    return orderitemList;
  }
  public void setOrderitemList(List<Orderitem> orderitemList) {
    this.orderitemList = orderitemList;
  }
  //用户类 get/set
  public User getUser() {
    return user;
  }
  public void setUser(User user) {
    this.user = user;
  }
  //toString
  @Override
  public String toString() {
    return "Orders{" +
        "oid='" + oid + '\'' +
        ", total=" + total +
        ", ordertime='" + ordertime + '\'' +
        ", name='" + name + '\'' +
        ", phone='" + phone + '\'' +
        ", addr='" + addr + '\'' +
        ", uid=" + uid +
        ", orderitemList=" + orderitemList +
        ", user=" + user +
        '}';
  }
}
