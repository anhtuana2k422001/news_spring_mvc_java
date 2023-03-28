package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Post;
import com.NewsSpringMVC.Mapper.CategoryMapper;
import com.NewsSpringMVC.Mapper.PostMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
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
    public Category getCategory(String slugCate) {
        String sql = "SELECT * FROM categories WHERE slug = ?";
        List<Category> categories = _jdbcTemplate.query(sql, new Object[]{slugCate}, new CategoryMapper());
        if (categories.isEmpty()) {
            return null; // hoặc đưa ra một thông báo lỗi thích hợp
        } else {
            return categories.get(0);
        }
    }
     
    // Lấy danh sách bài viết theo id chuyên mục
     @SuppressWarnings({"UnusedAssignment", "Convert2Diamond"})
     public List<Post> listPostCategory(int idCate){
        List<Post> listPost = new ArrayList<Post>();
        String sql = "SELECT * FROM posts WHERE category_id = '" + idCate + "'	;";
        listPost = _jdbcTemplate.query(sql, new PostMapper());
        return listPost;
    }
   
}
