package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.CategoryDao;
import com.NewsSpringMVC.Entity.Category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements ICategoryService {
    @Autowired
    private CategoryDao categoryDao;
    
    @Override
    public List<Category> getDataCategory() {
       return categoryDao.getDataCategory();
    }
}