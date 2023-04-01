package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.NewsSpringMVC.Dao.CommentDao;
import com.NewsSpringMVC.Entity.Comment;

@Service
public class CommentServiceImplAdmin implements ICommentServiceAdmin{
	@Autowired
    private CommentDao commentDao;

    @Override
    public List<Comment> getDataComment() {
        return commentDao.getDataComment();
    }
}
