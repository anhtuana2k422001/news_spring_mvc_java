package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.UserDao;
import com.NewsSpringMVC.Entity.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeServiceImpl implements IHomeService {
    @Autowired
    private UserDao userDao;       
   
    @Override
    public List<User> getDataUser() {
       return userDao.getDataUser();
    }


}
