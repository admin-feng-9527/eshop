package com.zjitc.model;

import java.util.List;
import sun.management.counter.perf.PerfInstrumentation;


public class User {
  private Integer uid;//用户ID
  private String username;//用户名
  private String password;//密码
  private String email;//邮箱
  private String phone;//电话
  private String addr;//地址

  //构造方法
  public User() {
  }
  public User(Integer uid, String username, String password, String email, String phone, String addr) {
    this.uid = uid;
    this.username = username;
    this.password = password;
    this.email = email;
    this.phone = phone;
    this.addr = addr;
  }
  //用户ID get/set
  public Integer getUid() {
    return uid;
  }
  public void setUid(Integer uid) {
    this.uid = uid;
  }
  //用户名 get/set
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  //密码 get/set
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  //邮箱 get/set
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  //电话 get/set
  public String getPhone() {
    return phone;
  }
  public void setPhone(String phone) {
    this.phone = phone;
  }
  //地址 get/set
  public String getAddr() {
    return addr;
  }
  public void setAddr(String addr) {
    this.addr = addr;
  }
  //toString
  @Override
  public String toString() {
    return "User{" +
            "uid=" + uid +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", email='" + email + '\'' +
            ", phone='" + phone + '\'' +
            ", addr='" + addr + '\'' +
            '}';
  }
}
