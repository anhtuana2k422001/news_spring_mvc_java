package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Entity.Post;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface IPostServiceAdmin {
   @Autowired
   public List<Post> getDataPost();
   public Post getPostById(int id);
}
