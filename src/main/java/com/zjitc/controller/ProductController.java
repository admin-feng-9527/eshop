package com.zjitc.controller;


import com.github.pagehelper.PageInfo;
import com.zjitc.model.Hope;
import com.zjitc.model.Product;
import com.zjitc.model.User;
import com.zjitc.service.ProductService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

  @Autowired
  private ProductService productService;

  private static final Integer count= 8;//分页：一页显示商品的数量为8

    /**
     * 根据传入类别的cid，查询商品
     * @param cid
     * @param session
     * @return
     */
  @RequestMapping("/findProduct")
  public String findProduct(
    @RequestParam(name = "cid", required = false)String cid,
    HttpSession session) {
      List<Product> product = productService.findProduct(cid);
      session.setAttribute("plist", product);
      session.getAttribute("clist");
      return "/user/product.jsp";
  }

    /**
     * 查询商品并分页显示
     * @param cid
     * @param pageNum
     * @param session
     * @return
     */
  @RequestMapping("/page")
  public String page(
    @RequestParam(name = "cid") String cid,
    @RequestParam(name = "pageNum",defaultValue = "1") Integer pageNum,
    HttpSession session) {
      List<Product> products = productService.findByCid(cid, pageNum, count);
      PageInfo<Product> pageInfo = new PageInfo<>(products);
      session.setAttribute("page", pageInfo);
      session.setAttribute("cid", cid);
      session.setAttribute("products", products);
      return "/user/product.jsp";
  }

    /**
     * 商品详情
     * @param pid
     * @param session
     * @return
     */
  @RequestMapping("/productList")
  public String productList(
    @RequestParam(name = "pid") Integer pid,
    HttpSession session){
      Product product = productService.findProductList(pid);
      session.setAttribute("p", product);
      return "/user/product_detail.jsp";
  }

    /**
     * 收藏商品
     * @param session
     * @param pid
     * @return
     */
  @RequestMapping("/hope")
  public String hope(
    HttpSession session,
    @RequestParam(name = "pid") Integer pid) {
      //只有登录后能收藏商品
      User user = (User) session.getAttribute("user");
      if (user == null) {
          return "/user/login.jsp";
      } else {
          productService.add(user.getUid(), pid);
          return "forward:/hopeList.do";
      }
  }

    /**
     * 跳转到收藏列表
     * @param session
     * @return
     */
  @RequestMapping("/hopeList")
  public String hopeList(HttpSession session) {
      //只有登录后能收藏商品
      User user = (User) session.getAttribute("user");
      if (user == null) {
          return "/user/login.jsp";
      }
      List<Hope> list = productService.findAll(user.getUid());
      session.setAttribute("list", list);
      return "/user/hope.jsp";
  }

    /**
     * 删除收藏商品
     * @param pid
     * @return
     */
  @RequestMapping("/delete")
  public String delete(@RequestParam(name = "pid") Integer pid) {
      productService.delete(pid);
      return "forward:/hopeList.do";
  }

    /**
     * 清空收藏商品
     * @param session
     * @return
     */
  @RequestMapping("/clear")
  public String clear(HttpSession session) {
      User user = (User) session.getAttribute("user");
      productService.clear(user.getUid());
      return "forward:/hopeList.do";
  }

    /**
     * 根据条件搜索商品
     * @param session
     * @param condition
     * @return
     */
  @RequestMapping("/search")
  public String search(
    HttpSession session,
    @RequestParam(name = "condition")  String  condition) {
      List<Product> list = productService.findByCondition("%" + condition + "%");
      session.setAttribute("list", list);
      return "/user/search.jsp";
  }
}
