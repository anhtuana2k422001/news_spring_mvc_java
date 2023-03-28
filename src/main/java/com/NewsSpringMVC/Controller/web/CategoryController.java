package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Service.web.CategoryServiceImpl;
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

@Controller(value = "categoryControllerOfWeb")
public class CategoryController {
    @Autowired
    HomeServiceImpl homeService;
    @Autowired
    CategoryServiceImpl categoryService;
    @Autowired
    UserServiceImpl userService;
    @Autowired
    ImageServiceImpl imageService;
    @Autowired
    CommentServiceImpl commentService;
    @Autowired
    PostServiceImpl postService;
    
    // Load thông tin tất cả bài viết của từng chuyển mục
    @RequestMapping(value = "/chuyen-muc/{slug}", method = RequestMethod.GET)
    public ModelAndView category(@PathVariable("slug") String slug) {
        ModelAndView mav = new ModelAndView("web/categorypost");
        // Lấy danh sách category
        mav.addObject("listCategory", homeService.getDataCategory());
        // Lấy 5 bài viết mới nhất theo danh mục
        mav.addObject("listNewPost", postService.newPostCategory(5));
        Category cate = categoryService.getCategory(slug);
        if(categoryService.getCategory(slug) == null){
           mav.setViewName("redirect:/error");
           return mav;
        }
        mav.addObject("categoryName", cate.getName());
        mav.addObject("listPostCate", categoryService.listPostCategory(cate.getId()));
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
