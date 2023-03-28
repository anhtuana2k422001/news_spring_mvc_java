package com.NewsSpringMVC.Mapper;

import com.NewsSpringMVC.Entity.Post;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class PostMapper implements RowMapper<Post>{

    @Override
    public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
        Post post = new Post();
        post.setId(rs.getInt("id")); 
        post.setTitle(rs.getString("title"));  
        post.setSlug(rs.getString("slug"));
        post.setExcerpt(rs.getString("excerpt"));
        post.setBody(rs.getString("body"));
        post.setUser_id(rs.getInt("user_id"));
        post.setCategory_id(rs.getInt("category_id"));
        post.setViews(rs.getInt("views"));
        post.setApproved(rs.getInt("approved"));
        post.setCreated_at(rs.getString("created_at"));        
        post.setUpdated_at(rs.getString("updated_at"));
        return post;
    }
    
}
