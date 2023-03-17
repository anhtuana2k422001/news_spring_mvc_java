package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Mapper.CategoryMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDao {
    @Autowired
    JdbcTemplate _jdbcTemplate;
   public List<Category> getDataCategory(){
        @SuppressWarnings({"UnusedAssignment", "Convert2Diamond"})
        List<Category> listCategory = new ArrayList<Category>();
        String sql = "SELECT * FROM categories";
        listCategory = _jdbcTemplate.query(sql, new CategoryMapper());
        return listCategory;
    }
}
