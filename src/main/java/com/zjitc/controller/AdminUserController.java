package com.zjitc.controller;

import com.github.pagehelper.PageInfo;
import com.zjitc.model.*;
import com.zjitc.service.AdminUserService;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class AdminUserController {

  private static final Integer count = 10;

  @Autowired
  public AdminUserService adminUserService;

  /**
   * 管理员登录
   * @param username
   * @param password
   * @param session
   * @return
   */
  @RequestMapping("/adminLogin")
  public String login(
      @RequestParam(name = "username", required = false) String username,
      @RequestParam(name = "password", required = false) String password,
      HttpSession session){
    AdminUser user = adminUserService.login(username, password);
    if (user == null){
      return "/admin/login.jsp";
    } else {
      session.setAttribute("user", user);
      return "/admin/search.jsp";
    }
  }

  /**
   * 查询所有用户
   * @param session
   * @return
   */
  @RequestMapping("/findAllUser")
  public String findAllUser(HttpSession session){
    List<User> list = adminUserService.findAllUser();
    session.setAttribute("list", list);
    return "/admin/home.jsp";
  }

  /**
   * 删除用户
   * @param uid
   * @return
   */
  @RequestMapping("/deleteUser")
  public String delete(@RequestParam(name = "uid", required = false) Integer uid){
    adminUserService.delete(uid);
    return "forward:/findAllUser.do";
  }

  /**
   * 查看所有订单
   * @param pageNum
   * @param session
   * @return
   */
  @RequestMapping("/orders")
  public String page(
      @RequestParam(name = "pageNum", defaultValue = "1") Integer pageNum,
      HttpSession session
  ){
    List<Orders> list = adminUserService.findOrders(pageNum, count);
    PageInfo<Orders> pageInfo = new PageInfo<>(list);
    session.setAttribute("page", pageInfo);
    session.setAttribute("orders", list);
    return "/admin/orders.jsp";
  }

  /**
   * 查询全部商品
   * @param pageNum
   * @param session
   * @return
   */
  @RequestMapping("/findAllProduct")
  public String find(
      @RequestParam(name = "pageNum", defaultValue = "1") Integer pageNum,
      HttpSession session){
    List<Product> list = adminUserService.findAllProduct(pageNum, count);
    PageInfo<Product> pageInfo = new PageInfo<>(list);
    session.setAttribute("page", pageInfo);
    session.setAttribute("plist", list);
    return "/admin/product.jsp";
  }

  /**
   * 修改商品页面
   * @param pid
   * @param session
   * @return
   */
  @RequestMapping("/editor")
  public String editor(
    @RequestParam(name = "pid", required = false) Integer pid,
    HttpSession session){
      Product product = adminUserService.editor(pid);
      session.setAttribute("p", product);
      return "/admin/editor.jsp";
  }

  /**
   * 修改商品
   * @param pid
   * @param pname
   * @param price
   * @param pdesc
   * @param cid
   * @return
   */
  @RequestMapping("/productEdit")
  public String productEdit(
      @RequestParam(name = "pid", required = false) Integer pid,
      @RequestParam(name = "pname", required = false) String pname,
      @RequestParam(name = "price", required = false) Double price,
      @RequestParam(name = "pdesc", required = false) String pdesc,
      @RequestParam(name = "cid", required = false) Integer cid){
       adminUserService.productEdit(pid, pname, price, pdesc, cid);
       return "forward:/findAllProduct.do";
  }

  /**
   * 删除商品
   * @param pid
   * @return
   */
  @RequestMapping("deleteProduct")
  public String deleteProduct(@RequestParam(name = "pid", required = false) Integer pid){
    adminUserService.deleteProduct(pid);
    return "forward:/findAllProduct.do";
  }

  /**
   * 添加商品
   * @param session
   * @param pname
   * @param price
   * @param cid
   * @param pdesc
   * @param image
   * @return
   * @throws IOException
   */
  @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
  public String AdminProductAdd(
      HttpSession session,
      @RequestParam(name = "pname") String pname,
      @RequestParam(name = "price") double price,
      @RequestParam(name = "cid") Integer cid,
      @RequestParam(name = "pdesc") String pdesc,
      @RequestParam(name = "image") MultipartFile image
  ) throws IOException {
    Product product = new Product();
    product.setPname(pname);
    product.setPrice(price);
    product.setPdesc(pdesc);
    product.setCid(cid);
    //如果文件不为空，写入上传路径
    if (!image.isEmpty()) {
      //上传文件路径
      String path = session.getServletContext().getRealPath("/images");
      //上传文件名
      String filename = image.getOriginalFilename();
      File filepath = new File(path, filename);
      //判断路径是否存在，如果不存在就创建一个
      if (!filepath.getParentFile().exists()) {
        filepath.getParentFile().mkdirs();
      }
      //将上传文件保存到一个目标文件当中
      image.transferTo(new File(path + File.separator + filename));
      product.setImage("images/" + filename);
    }
    adminUserService.addProduct(product);
    return "forward:/findAllProduct.do";
  }

  /**
   * 查看类别
   * @param session
   * @return
   */
  @RequestMapping("/category")
  public String category(HttpSession session){
    List<Category> list = adminUserService.findAllCategory();
    session.setAttribute("category", list);
    return "/admin/category.jsp";
  }

  /**
   * 删除类别
   * @param cid
   * @return
   */
  @RequestMapping("/deleteCategory")
  public String deleteCategory(@RequestParam(name = "cid", required = false) Integer cid){
    adminUserService.deleteCategory(cid);
    return "forward:/category.do";
  }

  /**
   * 添加类别
   * @param cname
   * @return
   */
  @RequestMapping("/addCategory")
  public String addCategory(@RequestParam(name = "cname", required = false) String cname){
    adminUserService.addCategory(cname);
    return "forward:/category.do";
  }
}
