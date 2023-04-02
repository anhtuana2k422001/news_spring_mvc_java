package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.NewsSpringMVC.Entity.Comment;

@Service
public interface ICommentServiceAdmin {
	@Autowired
    public List<Comment> getDataComment();
	public Comment getCommentById(int id);
	public int UpdateComment(Comment comment);
	public List<Comment> get10Comment();
	public int countComment();
}
