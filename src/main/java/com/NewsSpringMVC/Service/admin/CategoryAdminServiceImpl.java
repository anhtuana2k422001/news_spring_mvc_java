package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.CategoryDao;
import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Post;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryAdminServiceImpl implements ICategoryAdminService {
    @Autowired
    private CategoryDao categoryDao;
    
    @Override
    public List<Category> getDataCategory() {
       return categoryDao.getDataCategory();
    }

    @Override
    public Category getCategoryBySlug(String slug) {
        return categoryDao.getCategoryBySlug(slug);
    }

    @Override
    public String getNameCategoryById(int category_id) {
        return categoryDao.getNameCategoryById(category_id);
    }
}
