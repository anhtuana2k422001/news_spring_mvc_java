package com.NewsSpringMVC.Mapper;

import com.NewsSpringMVC.Entity.Category;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class CategoryMapper implements RowMapper<Category>{

    @Override
    public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
        Category category = new Category();
        category.setId(rs.getInt("id"));
        category.setName(rs.getString("name"));
        category.setSlug(rs.getString("slug")); 
        category.setUser_id(rs.getInt("user_id"));       
        category.setCreated_at(rs.getString("created_at"));        
        category.setUpdated_at(rs.getString("updated_at"));
        return category;
    }
    
}
