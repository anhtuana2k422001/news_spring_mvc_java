package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.UserDao;
import com.NewsSpringMVC.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface IUserService {
    @Autowired
    UserDao userDao = new UserDao();
    public int AddAcount(User user);
    public boolean CheckAcount(User user);    
    public User UserLogin(User user);
}
