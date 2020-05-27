package com.zjitc.service.imp;

import com.github.pagehelper.PageHelper;
import com.zjitc.dao.AdminUserDao;
import com.zjitc.model.*;
import com.zjitc.service.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AdminUserServiceImp implements AdminUserService {

  @Autowired
  public AdminUserDao userDao;

  @Override
  public AdminUser login(String username, String password) {
    return userDao.login(username, password);
  }

  @Override
  public List<User> findAllUser() {
    return userDao.findAll();
  }

  @Override
  public void delete(Integer uid) {
    userDao.delete(uid);
  }

  @Override
  public List<Orders> findOrders(Integer pageNum, Integer count) {
    PageHelper.startPage(pageNum, count);
    List<Orders> list = userDao.findOrders();
    return list;
  }

  @Override
  public List<Product> findAllProduct(Integer pageNum, Integer count) {
    PageHelper.startPage(pageNum, count);
    List<Product> list = userDao.findAllProduct();
    return list;
  }

  @Override
  public Product editor(Integer pid) {
    return userDao.editor(pid);
  }

  @Override
  public void productEdit(Integer pid, String pname, Double price, String pdesc, Integer cid) {
    userDao.productEdit(pid, pname, price, pdesc, cid);
  }

  @Override
  public void deleteProduct(Integer pid) {
    userDao.deleteProduct(pid);
  }

  @Override
  public List<Category> findAllCategory() {
    return userDao.findAllCategory();
  }

  @Override
  public void deleteCategory(Integer cid) {
    userDao.deleteCategory(cid);
  }

  @Override
  public void addCategory(String cname) {
    userDao.addCategory(cname);
  }

  @Override
  public void addProduct(Product product) {
    userDao.addProduct(product);
  }
}
