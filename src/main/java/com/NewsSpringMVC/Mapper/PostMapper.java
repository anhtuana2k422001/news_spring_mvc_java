package com.NewsSpringMVC.Mapper;

import com.NewsSpringMVC.Entity.Post;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class PostMapper implements RowMapper<Post>{

    @Override
    public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
        Post user = new Post();
        user.setId(rs.getInt("id")); 
        user.setTitle(rs.getString("title"));  
        user.setSlug(rs.getString("slug"));
        user.setExcerpt(rs.getString("excerpt"));
        user.setBody(rs.getString("body"));
        user.setUser_id(rs.getInt("user_id"));
        user.setCategory_id(rs.getInt("category_id"));
        user.setViews(rs.getInt("views"));
        user.setApproved(rs.getInt("approved"));
        user.setCreated_at(rs.getString("created_at"));        
        user.setUpdated_at(rs.getString("updated_at"));
        return user;
    }
    
}
