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

    @Override
    public List<Post> listPostCategory(int idCate) {
        return postDao.listPostCategory(idCate);
    }

    @Override
    public List<Post> listNewPost() {
        return postDao.listNewPost();
    }

    @Override
    public List<Post> listHotPost() {
        return postDao.listHotPost();
    }

    @Override
    public List<Post> listViewsPost() {
        return postDao.listViewsPost();
    }
    
}
