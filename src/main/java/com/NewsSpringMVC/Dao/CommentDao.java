package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Comment;
import com.NewsSpringMVC.Mapper.CategoryMapper;
import com.NewsSpringMVC.Mapper.CommentMapper;

import static com.NewsSpringMVC.Handle.HandleUser.getCurrentDateTimeFormatted;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
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
    
 // Lấy tên danh mục theo ID
    public Comment getCommentById(int id) {
        try {
            String sql = "SELECT * FROM comments WHERE id = ?";
            Comment comment = _jdbcTemplate.queryForObject(sql, new Object[]{id}, new CommentMapper());
            return comment;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
   public List<Comment> getDataComment(){
        List<Comment> listComment = new ArrayList<Comment>();
        String sql = "SELECT * FROM comments;";
        listComment = _jdbcTemplate.query(sql, new CommentMapper());
        return listComment;
    }
    
// chỉnh sửa bài viết
   @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
   public int UpdateComment(Comment comment) {
       String dateTime = getCurrentDateTimeFormatted();
       StringBuffer sql = new StringBuffer();
       sql.append("UPDATE comments SET ");
       sql.append("the_comment = '"+comment.getThe_comment()+"', ");
       sql.append("post_id = 11, "); 
       sql.append("user_id = 13, "); 
       sql.append("updated_at = '"+dateTime+"' ");
       sql.append("WHERE id = "+comment.getId());
       int update = _jdbcTemplate.update(sql.toString());
       return update; // cập nhật được bao nhiêu dòng
   }
    
}
