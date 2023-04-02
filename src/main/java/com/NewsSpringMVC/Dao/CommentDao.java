package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Comment;
import static com.NewsSpringMVC.Handle.HandleUser.getCurrentDateTimeFormatted;
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
   
   @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
   public int AddComment(Comment comment) {
        StringBuffer sql = new StringBuffer();
        String dateTime = getCurrentDateTimeFormatted();
        sql.append("INSERT ");
        sql.append("INTO comments ");
        sql.append("(the_comment, ");
        sql.append("post_id, ");
        sql.append("user_id, ");
        sql.append("created_at, ");
        sql.append("updated_at) ");
        sql.append("VALUES ( ");
        sql.append("'"+comment.getThe_comment()+"', ");
        sql.append("'"+comment.getPost_id()+"', ");
        sql.append("'"+comment.getUser_id()+"', ");
        sql.append("'"+dateTime+"', ");
        sql.append("'"+dateTime+"' ");
        sql.append(")");
        int insert = _jdbcTemplate.update(sql.toString());
        return insert; // cập nhật được bao nhiêu dòng
    }
    
    
}
