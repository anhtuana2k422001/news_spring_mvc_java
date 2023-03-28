package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Service.web.CategoryServiceImpl;
import com.NewsSpringMVC.Service.web.HomeServiceImpl;
import com.NewsSpringMVC.Service.web.ImageServiceImpl;
import com.NewsSpringMVC.Service.web.UserServiceImpl;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "homeControllerOfWeb")
public class HomeController {

    @Autowired
    HomeServiceImpl homeService;
    @Autowired
    CategoryServiceImpl categoryService;
    @Autowired
    UserServiceImpl userService;
    @Autowired
    ImageServiceImpl imageService;
    
    
    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homePage(HttpSession session) {
        User user = (User) session.getAttribute("UserInfo");
        ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("listCategory", homeService.getDataCategory());        
        mav.addObject("UserInfo", user);
        return mav;
    }

    @RequestMapping(value = "/post", method = RequestMethod.GET)
    public ModelAndView post() {
        ModelAndView mav = new ModelAndView("web/post");
        mav.addObject("listCategory", homeService.getDataCategory());
        return mav;
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public ModelAndView page404() {
        ModelAndView mav = new ModelAndView("404");
        mav.addObject("listCategory", homeService.getDataCategory());
        return mav;
    }
    
    // Load thông tin tất cả bài viết của từng chuyển mục
   @RequestMapping(value = "/chuyen-muc/{slug}", method = RequestMethod.GET)
    public ModelAndView category(@PathVariable("slug") String slug) {
        ModelAndView mav = new ModelAndView("web/categorypost");
        mav.addObject("listCategory", homeService.getDataCategory());
        // sử dụng biến slug ở đây để thực hiện các thao tác cần thiết
        Category cate  = categoryService.getNameCategory(slug);
        mav.addObject("categoryName", cate.getName()); 
        String idCate = String.valueOf(cate.getId());
        mav.addObject("listPostCate", categoryService.listPostCategory(idCate));
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
    

}
