package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewsSpringMVC.Entity.Comment;

@Service
public interface ICommentServiceAdmin {
	@Autowired
    public List<Comment> getDataComment();
}