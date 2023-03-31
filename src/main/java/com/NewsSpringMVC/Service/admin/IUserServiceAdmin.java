package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.UserDao;
import com.NewsSpringMVC.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface IUserServiceAdmin {
    @Autowired
    UserDao userDao = new UserDao();
    public User getUserById(int userId);
}