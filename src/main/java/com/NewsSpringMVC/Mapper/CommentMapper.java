package com.NewsSpringMVC.Mapper;

import com.NewsSpringMVC.Entity.Comment;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class CommentMapper implements RowMapper<Comment>{

    @Override
    public Comment mapRow(ResultSet rs, int rowNum) throws SQLException {
        Comment comment = new Comment();
        comment.setId(rs.getInt("id")); 
        comment.setThe_comment(rs.getString("the_comment"));  
        comment.setPost_id(rs.getInt("post_id"));
        comment.setUser_id(rs.getInt("user_id"));
        comment.setCreated_at(rs.getString("created_at"));        
        comment.setUpdated_at(rs.getString("updated_at"));
        return comment;
    }
    
}
