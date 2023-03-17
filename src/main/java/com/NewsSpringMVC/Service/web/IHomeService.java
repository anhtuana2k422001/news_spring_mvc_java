package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Entity.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/* Interface Home */
@Service
public interface IHomeService {
    @Autowired
    public List<User> getDataUser();
}
