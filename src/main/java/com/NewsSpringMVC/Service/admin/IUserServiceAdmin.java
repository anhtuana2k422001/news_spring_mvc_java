package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.UserDao;
 
import com.NewsSpringMVC.Entity.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 

@Service
public interface IUserServiceAdmin {
    @Autowired
    UserDao userDao = new UserDao();
    public User getUserById(int userId);
    public List<User> getDataUser();
    public int AddAccount(User user);
    public boolean isEmailAlreadyInUse(String userEmail);
    
}
