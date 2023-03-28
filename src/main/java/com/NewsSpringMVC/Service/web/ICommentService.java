package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Entity.Comment;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface ICommentService {
    @Autowired
    public List<Comment> getCommentPost(int post_id);
}
