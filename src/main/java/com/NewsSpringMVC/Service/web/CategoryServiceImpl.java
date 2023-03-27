package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.CategoryDao;
import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Post;
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

    @Override
    public Category getNameCategory(String slug) {
        return categoryDao.getNameCategory(slug);
    }

    @Override
    public List<Post> listPostCategory(String idCate) {
         return categoryDao.listPostCategory(idCate);
    }
}
