package com.zjitc.controller;

import com.zjitc.model.Category;
import com.zjitc.service.CategoryService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

  @Autowired
  private CategoryService categoryService;

  /**
   * 商城首页
   * @param session
   * @return
   */
  @RequestMapping("/index")
  public String index(HttpSession session) {
    List<Category> clist = categoryService.findCategory();
    session.setAttribute("clist", clist);
    return "/user/index.jsp";
  }

}
