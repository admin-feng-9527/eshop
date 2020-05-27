package com.zjitc.model;


public class AdminUser {
  public Integer uid;//用户ID
  public String username;//用户名
  public String password;//密码

  //构造方法
  public AdminUser() {
  }
  public AdminUser(Integer uid, String username, String password) {
    this.uid = uid;
    this.username = username;
    this.password = password;
  }
  //uid get/set
  public Integer getUid() {
    return uid;
  }
  public void setUid(Integer uid) {
    this.uid = uid;
  }
  //username get/set
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  //password get/set
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  //toString
  @Override
  public String toString() {
    return "AdminUser{" +
            "uid=" + uid +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            '}';
  }
}
