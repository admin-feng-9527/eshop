package com.zjitc.model;


public class Product {
  private Integer pid;//商品ID
  private String pname;//商品名称
  private Double price;//商品价钱
  private String image;//商品图片
  private String pdesc;//商品描述
  private Category category;//类别类
  private Integer cid;//所属类别ID

  //构造方法
  public Product() {
  }
  public Product(Integer pid, String pname, Double price, String image, String pdesc, Category category, Integer cid) {
    this.pid = pid;
    this.pname = pname;
    this.price = price;
    this.image = image;
    this.pdesc = pdesc;
    this.category = category;
    this.cid = cid;
  }
  //商品ID get/set
  public Integer getPid() {
    return pid;
  }
  public void setPid(Integer pid) {
    this.pid = pid;
  }
  //商品名称 get/set
  public String getPname() {
    return pname;
  }
  public void setPname(String pname) {
    this.pname = pname;
  }
  //商品价钱 get/set
  public Double getPrice() {
    return price;
  }
  public void setPrice(Double price) {
    this.price = price;
  }
  //商品图片 get/set
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }
  //商品描述 get/set
  public String getPdesc() {
    return pdesc;
  }
  public void setPdesc(String pdesc) {
    this.pdesc = pdesc;
  }
  //类别类 get/set
  public Category getCategory() {
    return category;
  }
  public void setCategory(Category category) {
    this.category = category;
  }
  //所属类别ID get/set
  public Integer getCid() {
    return cid;
  }
  public void setCid(Integer cid) {
    this.cid = cid;
  }
  //toString
  @Override
  public String toString() {
    return "Product{" +
        "pid=" + pid +
        ", pname='" + pname + '\'' +
        ", price=" + price +
        ", image='" + image + '\'' +
        ", pdesc='" + pdesc + '\'' +
        ", category=" + category +
        ", cid=" + cid +
        '}';
  }
}
