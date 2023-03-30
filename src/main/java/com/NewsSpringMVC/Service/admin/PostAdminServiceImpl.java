package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.PostDao;
import com.NewsSpringMVC.Entity.Post;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostAdminServiceImpl implements IPostAdminService {
    @Autowired
    PostDao postDao = new PostDao();

	@Override
	public List<Post> getDataPost() {
		return postDao.getDataPost();
	}

	@Override
	public List<Post> GetPostById(int id) { 
		return postDao.GetPostById(id);
	}    

  
    
}
