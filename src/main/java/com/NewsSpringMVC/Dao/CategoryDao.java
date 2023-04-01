package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Mapper.CategoryMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDao {
    @Autowired
    JdbcTemplate _jdbcTemplate;
   
   @SuppressWarnings({"UnusedAssignment", "Convert2Diamond"})
   public List<Category> getDataCategory(){
        List<Category> listCategory = new ArrayList<Category>();
        String sql = "SELECT * FROM `categories`;";
        listCategory = _jdbcTemplate.query(sql, new CategoryMapper());
        return listCategory;
    }
   
    // Lấy tên chuyên mục theo slug
    public Category getCategoryBySlug(String slugCate) {
        try {
            String sql = "SELECT * FROM categories WHERE slug = ?";
            Category category = _jdbcTemplate.queryForObject(sql, new Object[]{slugCate}, new CategoryMapper());
            return category;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
     
    // Lấy tên danh mục từ id bài viết
    public String getNameCategoryById(int category_id) {
        try {
            String sql = "SELECT * FROM categories WHERE id = ?";
            Category category = _jdbcTemplate.queryForObject(sql, new Object[]{category_id}, new CategoryMapper());
            return category.getName();
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    // Lấy tên danh mục theo ID
    public Category getCategoryById(int idCate) {
        try {
            String sql = "SELECT * FROM categories WHERE id = ?";
            Category category = _jdbcTemplate.queryForObject(sql, new Object[]{idCate}, new CategoryMapper());
            return category;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
   
}
