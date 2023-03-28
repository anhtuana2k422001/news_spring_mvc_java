package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.PostDao;
import com.NewsSpringMVC.Entity.Post;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements IPostService {
    @Autowired
    PostDao postDao = new PostDao();    

    @Override
    public List<Post> newPostCategory(int limit) {
        return postDao.newPostCategory(limit);
    }

    @Override
    public Post getPostDetail(String slugPost) {
        return postDao.getPostDetail(slugPost);
    }
    
}
