package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Service.web.CommentServiceImpl;
import com.NewsSpringMVC.Service.web.HomeServiceImpl;
import com.NewsSpringMVC.Service.web.ImageServiceImpl;
import com.NewsSpringMVC.Service.web.PostServiceImpl;
import com.NewsSpringMVC.Service.web.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "postControllerOfWeb")
public class PostController {
    @Autowired
    HomeServiceImpl homeService;
    @Autowired
    UserServiceImpl userService;
    @Autowired
    ImageServiceImpl imageService;
    @Autowired
    CommentServiceImpl commentService;
    @Autowired
    PostServiceImpl  postService;

    // Load thông tin tất cả bài viết của từng chuyển mục
   @RequestMapping(value = "/{slugPost}", method = RequestMethod.GET)
    public ModelAndView category(@PathVariable("slugPost") String slug) {
        ModelAndView mav = new ModelAndView("web/post");
        // Lấy danh sách category
        mav.addObject("listCategory", homeService.getDataCategory());
        // Lấy 5 bài viết mới nhất theo danh mục
        mav.addObject("listNewPost", postService.newPostCategory(5));
        // Lấy thông tin bài viết
        mav.addObject("postDetail", postService.getPostDetail(slug));
        if(postService.getPostDetail(slug) == null){
           mav.setViewName("redirect:/error");
        }
        return mav;
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
}
