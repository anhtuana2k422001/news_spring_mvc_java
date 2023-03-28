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
    public Category getCategory(String slug) {
        return categoryDao.getCategory(slug);
    }

    @Override
    public List<Post> listPostCategory(int idCate) {
         return categoryDao.listPostCategory(idCate);
    }
}
