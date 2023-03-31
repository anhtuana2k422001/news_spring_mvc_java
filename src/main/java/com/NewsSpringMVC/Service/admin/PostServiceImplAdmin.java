package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.PostDao;
import com.NewsSpringMVC.Entity.Post;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImplAdmin implements IPostServiceAdmin {

    @Autowired
    private PostDao postDao;

    @Override
    public List<Post> getDataPost() {
        return postDao.getDataPost();
    }

    @Override
    public List<Post> GetPostById(int id) {
        return postDao.GetPostById(id);
    }

}
