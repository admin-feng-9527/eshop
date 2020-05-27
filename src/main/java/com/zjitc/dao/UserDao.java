package com.zjitc.dao;

import com.zjitc.model.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
  User login(@Param("username") String username, @Param("password") String password);

  int register(User user);

  User findByUid(Integer uid);
}
