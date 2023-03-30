package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Comment;
import com.NewsSpringMVC.Mapper.CommentMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
@SuppressWarnings({"Convert2Diamond", "UnusedAssignment"})
public class CommentDao {

    @Autowired
    JdbcTemplate _jdbcTemplate;
    
    // Lấy tất cả comment của 1 bài viết theo post Id
    public List<Comment> getCommentPost(int post_id) {
        List<Comment> listCommentPost = new ArrayList<Comment>();
        String sql = "SELECT * FROM comments WHERE post_id = '" + post_id +"' ";
        listCommentPost = _jdbcTemplate.query(sql, new CommentMapper());
        return listCommentPost;
    }
    
   public List<Comment> getDataComment(){
        List<Comment> listComment = new ArrayList<Comment>();
        String sql = "SELECT * FROM comments;";
        listComment = _jdbcTemplate.query(sql, new CommentMapper());
        return listComment;
    }
    
    
}
