package com.zjitc.model;


public class Hope {
    private Integer uid;//用户ID
    private Integer pid;//商品ID
    private User user;//用户类
    private Product product;//商品类

    //构造方法
    public Hope() {
    }
    public Hope(Integer uid, Integer pid, User user, Product product) {
        this.uid = uid;
        this.pid = pid;
        this.user = user;
        this.product = product;
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
    //用户类 get/set
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    //商品类 get/set
    public Product getProduct() {
        return product;
    }
    public void setProduct(Product product) {
        this.product = product;
    }
    //toString
    @Override
    public String toString() {
        return "Hope{" +
                "uid=" + uid +
                ", pid=" + pid +
                ", user=" + user +
                ", product=" + product +
                '}';
    }
}
