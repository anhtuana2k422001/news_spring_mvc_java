package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface IUserService {
    @Autowired
    public boolean CheckAcount(User user);
}
