package com.zjitc.controller;

import com.zjitc.model.CartItem;
import com.zjitc.model.User;
import com.zjitc.service.CartService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CartController {

  @Autowired
  private CartService cartService;

  /**
   * 显示我的购物车
   * @param session
   * @return
   */
  @RequestMapping("/showMyCart")
  public String findMyCart(HttpSession session){
    User user= (User) session.getAttribute("user");
    if (user==null){
      return "/user/login.jsp";
    }
    List<CartItem> list=cartService.findAll(user.getUid());
    session.setAttribute("list",list);

    Double total=0.0;
    if(list!=null)
    {
      for(CartItem i:list)
      {
        total=total+i.getProduct().getPrice()*i.getCount();
      }
      session.setAttribute("total",total);
    }
    return "/user/cart.jsp";
  }

  /**
   * 加入购物车
   * @param session
   * @param pid
   * @param count
   * @return
   */
  @RequestMapping("/addCart")
  public String cart(
   HttpSession session,
   @RequestParam(name = "pid") Integer pid,
   @RequestParam(name = "count") Integer count){
   User user = (User) session.getAttribute("user");
    if (user == null) {
      return "/user/login.jsp";
    } else {
      List<CartItem> list = cartService.findAll(user.getUid());
      for (CartItem c : list) {
        if (pid.equals(c.getProduct().getPid())) {
          Integer num = c.getCount();
          num = count + num;
          cartService.update(pid, num);
          return "forward:/showMyCart.do";
        }
      }
      cartService.addcart(user.getUid(), pid, count);
      return "forward:/showMyCart.do";
    }
  }

  /**
   * 从购物车中删除商品
   * @param pid
   * @return
   */
   @RequestMapping("/removeProduct")
   public String removeProduct(@RequestParam("pid")Integer pid){
     cartService.delete(pid);
     return "forward:/showMyCart.do";
   }

  /**
   * 清空我的购物车
   * @param session
   * @return
   */
   @RequestMapping("/clearCart")
   public String clearCart(HttpSession session) {
     User user = (User) session.getAttribute("user");
     cartService.clearCart(user.getUid());
     return "forward:/showMyCart.do";
   }

}
