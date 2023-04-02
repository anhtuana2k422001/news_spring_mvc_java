package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Entity.Category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface ICategoryServiceAdmin {
    @Autowired
    public List<Category> getDataCategory();
    public String getNameCategoryById(int category_id);
    public int AddCategory(Category category);
    public int UpdateCategory(Category category);
    public Category getCategoryById(int idCate);
}
