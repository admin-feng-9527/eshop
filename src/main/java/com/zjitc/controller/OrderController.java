package com.zjitc.controller;

import com.zjitc.model.CartItem;
import com.zjitc.model.Orderitem;
import com.zjitc.model.Orders;
import com.zjitc.model.User;
import com.zjitc.service.CartService;
import com.zjitc.service.OrderService;
import com.zjitc.utils.CommonUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OrderController {

  @Autowired
  CartService cartService;

  @Autowired
  OrderService orderService;

  /**
   * 生成订单
   * @param session
   * @return
   */
  @RequestMapping("/creatOrder")
  public String creatOrder(HttpSession session){
    User user = (User) session.getAttribute("user");
    Orders orders = new Orders();
    orders.setUid(user.getUid());
    orders.setOid(CommonUtils.getUUID());
    orders.setAddr(user.getAddr());
    orders.setName(user.getUsername());
    orders.setOrdertime(CommonUtils.dateToString(new Date()));
    List<CartItem> list = cartService.findByUid(user.getUid());
    //根据遍历cartlist购物车条目信息，生成订单条目。
    List<Orderitem> orderitemList = new ArrayList<>();
    Double total = 0.0;
    //设置订单详情参数。
    for (CartItem item : list) {
      Orderitem orderitem = new Orderitem();
      orderitem.setOrders(orders);
      orderitem.setProduct(item.getProduct());
      orderitem.setCount(item.count);
      orderitem.setPrice(item.getProduct().getPrice() * item.getCount());
      total = total + item.getProduct().getPrice() * item.getCount();
      orderitemList.add(orderitem);
    }
    //设置订单参数。
    orders.setTotal(total);
    orders.setOrderitemList(orderitemList);
    orderService.add(orders);
    session.setAttribute("orders", orders);
    return "/user/orders.jsp";
  }

  /**
   * 订单支付
   * @param session
   * @param username
   * @param addr
   * @param phone
   * @return
   */
  @RequestMapping("/payOrder")
  public String payOrder(
      HttpSession session,
      @RequestParam(name = "username") String username,
      @RequestParam(name = "addr")  String addr,
      @RequestParam(name = "phone") String phone){
    Orders orders = (Orders) session.getAttribute("orders");
    //收货人和下单可能不是同一个人，存入订单编号，收件人，电话，地址。
    orderService.payOrder(orders.getOid(), username, phone, addr);
    String total = String.valueOf(orders.getTotal());
    session.setAttribute("WIDout_trade_no", orders.getOid());
    session.setAttribute("WIDtotal_amount", total);
    session.setAttribute("WIDsubject", "test");
    session.setAttribute("WIDbody", "test");
    return "/user/alipay/alipay.trade.page.pay.jsp";
  }

}
