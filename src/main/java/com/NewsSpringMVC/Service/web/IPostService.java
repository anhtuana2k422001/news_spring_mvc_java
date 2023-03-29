package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Entity.Post;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface IPostService {
   @Autowired
   public List<Post> newPostCategory(int limit);
   public Post getPostDetail(String slugPost);
   public List<Post> listPostCategory(int idCate);
   public List<Post> listNewPost();
   public List<Post> listHotPost();
   public List<Post> listViewsPost();
   public List<Post> listPostSreach(String key);
}
