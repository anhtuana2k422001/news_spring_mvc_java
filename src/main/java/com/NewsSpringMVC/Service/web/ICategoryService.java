package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Entity.Category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface ICategoryService {
    @Autowired
    public List<Category> getDataCategory();
}
