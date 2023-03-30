package com.NewsSpringMVC.Controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.NewsSpringMVC.Service.admin.CategoryAdminServiceImpl;
import com.NewsSpringMVC.Service.admin.PostAdminServiceImpl;
import com.NewsSpringMVC.Service.web.CommentServiceImpl;
import com.NewsSpringMVC.Service.web.HomeServiceImpl;
import com.NewsSpringMVC.Service.web.ImageServiceImpl;
import com.NewsSpringMVC.Service.web.PostServiceImpl;
import com.NewsSpringMVC.Service.web.UserServiceImpl;

@Controller(value="categoryControllerOfAdmin")
public class CategoryController {
	@Autowired  
    HomeServiceImpl homeService;
    @Autowired
    CategoryAdminServiceImpl categoryAdminService;
    @Autowired
    PostServiceImpl  postService;
    @Autowired
    UserServiceImpl userService;
    @Autowired
    ImageServiceImpl imageService;
    @Autowired
    CommentServiceImpl commentService;
	@Autowired
    PostAdminServiceImpl  postAdminService;
	
	@RequestMapping(value = "/admin/listcategory", method = RequestMethod.GET)
	public ModelAndView listCategory() {
	      ModelAndView mav = new ModelAndView("admin/category/listcategory");
	      mav.addObject("listCategoryAdmin", categoryAdminService.getDataCategory());
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
    
    @ModelAttribute("categoryAdminService")
    public CategoryAdminServiceImpl categoryAdminService() {
        return categoryAdminService;
    }
    
    @ModelAttribute("postService")
    public PostServiceImpl postService() {
        return postService;
    }
}
