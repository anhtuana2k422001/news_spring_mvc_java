package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Service.web.CategoryServiceImpl;
import com.NewsSpringMVC.Service.web.CommentServiceImpl;
import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.NewsSpringMVC.Service.web.HomeServiceImpl;
import com.NewsSpringMVC.Service.web.ImageServiceImpl;
import com.NewsSpringMVC.Service.web.PostServiceImpl;
import com.NewsSpringMVC.Service.web.TagServiceImpl;
import com.NewsSpringMVC.Service.web.UserServiceImpl;
import org.springframework.web.bind.annotation.ModelAttribute;
@Controller(value = "baseControllerOfWeb")
public class BaseController {
    @Autowired  
    HomeServiceImpl homeService;
    @Autowired
    CategoryServiceImpl categoryService;
    @Autowired
    PostServiceImpl  postService;
    @Autowired
    UserServiceImpl userService;
    @Autowired
    ImageServiceImpl imageService;
    @Autowired
    CommentServiceImpl commentService;
    @Autowired
    TagServiceImpl tagService;
    
    public ModelAndView _mvShare = new ModelAndView();
    
    @PostConstruct
    public void Init(){
        // Lấy danh sách category
        _mvShare.addObject("listCategory", homeService.getDataCategory());
        // Lấy 5 bài viết mới nhất theo danh mục loading side
        _mvShare.addObject("listNewPostSide", postService.newPostCategory(5));
         // Lấy 10 bài viết mới nhất theo danh mục
        _mvShare.addObject("listNewPostNav", postService.newPostCategory(10));
        // Lấy bài mới mới nhất
        _mvShare.addObject("listNewPost", postService.listNewPost());
        // Lấy bài viết hot nhất
        _mvShare.addObject("listHotPost", postService.listHotPost());
        // Lấy bài viết nhiều lượt xem nhất
        _mvShare.addObject("listViewsPost", postService.listViewsPost());
    }
    
    
    @ModelAttribute("userService")
    public UserServiceImpl userService() {
        return userService;
    }
    
    @ModelAttribute("imageService")
    public ImageServiceImpl imageService() {
        return imageService;
    }
    
    @ModelAttribute("commentService")
    public CommentServiceImpl commentService() {
        return commentService;
    }
    
    @ModelAttribute("categoryService")
    public CategoryServiceImpl categoryService() {
        return categoryService;
    }
    
    @ModelAttribute("postService")
    public PostServiceImpl postService() {
        return postService;
    }
    
    @ModelAttribute("tagService")
    public TagServiceImpl tagService() {
        return tagService;
    }
}
