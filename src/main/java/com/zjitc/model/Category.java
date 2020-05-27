package com.zjitc.model;


public class Category {
    private Integer cid;//类别ID
    private String cname;//类别名称

    //构造方法
    public Category() {
    }
    public Category(Integer cid, String cname, String image) {
        this.cid = cid;
        this.cname = cname;
    }
    //类别ID get/set
    public Integer getCid() {
        return cid;
    }
    public void setCid(Integer cid) {
        this.cid = cid;
    }
    //类别名称 get/set
    public String getCname() {
        return cname;
    }
    public void setCname(String cname) {
        this.cname = cname;
    }
    //toString
    @Override
    public String toString() {
        return "Category{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                '}';
    }
}
