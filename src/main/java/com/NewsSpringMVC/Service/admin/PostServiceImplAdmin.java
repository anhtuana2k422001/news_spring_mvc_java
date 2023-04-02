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
	public Post getPostById(int post_id) {
		return postDao.getPostById(post_id);
	}

	@Override
	public int UpdatePost(Post post) {
		// TODO Auto-generated method stub
		return postDao.UpdatePost(post);
	}

	@Override
	public int AddPost(Post post) {
		// TODO Auto-generated method stub
		return postDao.AddPost(post);
	}

	@Override
	public String getTitlePostId(int post_id) {
		// TODO Auto-generated method stub
		return postDao.getTitlePostId(post_id);
	}

}
