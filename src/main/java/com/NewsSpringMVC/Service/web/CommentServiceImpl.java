package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.CommentDao;
import com.NewsSpringMVC.Entity.Comment;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements ICommentService {
    @Autowired
    CommentDao commentDao = new CommentDao();    

    @Override
    public List<Comment> getCommentPost(int post_id) {
        return commentDao.getCommentPost(post_id);
    }

    
}
