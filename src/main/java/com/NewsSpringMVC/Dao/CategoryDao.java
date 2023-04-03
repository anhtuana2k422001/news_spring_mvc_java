package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Post;
import com.NewsSpringMVC.Mapper.CategoryMapper;
import com.NewsSpringMVC.Mapper.PostMapper;

import static com.NewsSpringMVC.Handle.HandleUser.getCurrentDateTimeFormatted;

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
   
   // Lấy ra tổng số danh mục 
   public int countCategory() {
       String sql = "SELECT COUNT(*) FROM categories";
       int count = _jdbcTemplate.queryForObject(sql, Integer.class);
       return count;
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
    
 // thêm mới bài viết
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
    public int AddCategory(Category category) {
        String dateTime = getCurrentDateTimeFormatted();
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO categories ");
        sql.append("(name, ");
        sql.append("slug, ");
        sql.append("user_id, "); 
        sql.append("created_at, ");
        sql.append("updated_at) ");
        sql.append("VALUES ( ");
        sql.append("'"+category.getName()+"', ");
        sql.append("'"+category.getSlug()+"', "); 
        sql.append("233, "); 
        sql.append("'"+dateTime+"', ");
        sql.append("'"+dateTime+"' ");
        sql.append(")");
        int insert = _jdbcTemplate.update(sql.toString());
        return insert; // cập nhật được bao nhiêu dòng
    }
    
 // chỉnh sửa bài viết
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
    public int UpdateCategory(Category category) {
        String dateTime = getCurrentDateTimeFormatted();
        StringBuffer sql = new StringBuffer();
        sql.append("UPDATE categories SET ");
        sql.append("name = '"+category.getName()+"', ");
        sql.append("slug = '"+category.getSlug()+"', "); 
        sql.append("user_id = 13, "); 
        sql.append("updated_at = '"+dateTime+"' ");
        sql.append("WHERE id = "+category.getId());
        int update = _jdbcTemplate.update(sql.toString());
        return update; // cập nhật được bao nhiêu dòng
    }
    
  
   
}
