package com.zjitc.controller;

import com.zjitc.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;

@Controller
public class PayController {

  @Autowired
  public OrderService orderService;

  /**
   * 支付成功跳转到订单页面
   * @param session
   * @return
   */
  @RequestMapping("myOrders")
  public String pay(HttpSession session) {
    session.getAttribute("orders");
    return "/user/orderList.jsp";
  }
}
