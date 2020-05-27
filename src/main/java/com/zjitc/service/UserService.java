package com.zjitc.service;

import com.zjitc.model.User;

public interface UserService {
  User login(String username, String password);

  int insert(User user);
}
