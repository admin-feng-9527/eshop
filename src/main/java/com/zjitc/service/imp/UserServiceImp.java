package com.zjitc.service.imp;

import com.zjitc.dao.UserDao;
import com.zjitc.model.User;
import com.zjitc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    private UserDao dao;

    @Override
    public User login(String username, String password) {
        return dao.login(username, password);
    }

    @Override
    public int insert(User user) {
      return dao.register(user);
    }
}
