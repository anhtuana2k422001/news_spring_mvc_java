package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Entity.Post;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface IPostServiceAdmin {
   @Autowired
   public List<Post> getDataPost();
   public Post getPostById(int post_id);
   public int UpdatePost(Post post);
   public int AddPost(Post post);
   public String getTitlePostId(int post_id);
}
