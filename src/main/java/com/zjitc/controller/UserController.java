package com.zjitc.controller;

import com.zjitc.model.User;
import com.zjitc.service.UserService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

  @Autowired
  private UserService  userService;

  /**
   * 用户登录
   * @param username
   * @param password
   * @param session
   * @param code
   * @return
   */
  @RequestMapping("/login")
  public String login(
   @RequestParam(name = "username", required = false) String username,
   @RequestParam(name ="password",required = false) String password,
   HttpSession session,
   @RequestParam(name = "validatecode",required = false) String code){
    //校验用户名和密码
    User user = userService.login(username, password);
    //校验验证码
    String validatecCode = (String) session.getAttribute("validatecCode");
    if (!validatecCode.equalsIgnoreCase(code)) {
      session.setAttribute("codeMsg", "验证码错误");
      return "/user/login.jsp";
    }
    if (user == null) {//如果用户为空，则转到登录页面继续登录
      return "/user/login.jsp";
    } else {//否则，转到首页显示 欢迎xxx
      session.setAttribute("user", user);
      return "/index.jsp";
    }
  }

  /**
   * 用户退出
   * @param session
   * @return
   */
  @RequestMapping("/userLogout")
  public String userLogout( HttpSession session) {
    //获取session
    session.getAttribute("user");
    //清空session
    session.removeAttribute("user");
    return "/index.jsp";
  }

  /**
   * 用户注册
   * @param user
   * @return
   */
  @RequestMapping("/register")
  public String register(User user){
    int count = userService.insert(user);
    if (count == 1) {//注册成功，跳转到登录页面，进行登录
      return "/user/login.jsp";
    } else {//否则，跳转到注册页面重新注册
      return "/user/register.jsp";
    }
  }
}
